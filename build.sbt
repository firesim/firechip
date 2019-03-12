lazy val commonSettings = Seq(
  organization := "edu.berkeley.cs",
  version := "1.0",
  scalaVersion := "2.12.4",
  traceLevel := 15,
  scalacOptions ++= Seq("-deprecation","-unchecked","-Xsource:2.11"),
  libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.1" % "test",
  libraryDependencies += "org.json4s" %% "json4s-native" % "3.5.3",
  libraryDependencies += "org.json4s" %% "json4s-jackson" % "3.5.3",
  libraryDependencies += "org.scala-lang" % "scala-reflect" % scalaVersion.value,
  addCompilerPlugin("org.scalamacros" % "paradise" % "2.1.0" cross CrossVersion.full),
  resolvers ++= Seq(
    Resolver.sonatypeRepo("snapshots"),
    Resolver.sonatypeRepo("releases"),
    Resolver.mavenLocal))

def dependOnProjectDir(prj: Project, dirs: Seq[(File, String)]): Project = {
  for ((d, dprj) <- dirs) {
    if (d.exists()) {
      //val realprj = (project in d)
      val realprj = Project(dprj, d) 
      return prj.dependsOn(realprj)
    }
  }
  println(s"Did not find project midastargetutils in paths $dirs")
  return prj
}


def volatileProjectDir(dirs: Seq[(File, String)]): Project = {
  for ((d, dprj) <- dirs) {
    if (d.exists()) {
      val realprj = Project(dprj, d) 
      return realprj
    }
  }
  println(s"Did not find project midastargetutils in paths $dirs")
  val prj = (project in file("empty")) 
  return prj
}

//lazy val rocketchip = RootProject(file("rocket-chip"))
//lazy val rocketchip = ProjectRef(file("rocket-chip"), "rocketchip")

val rocketChipDir = file("rocket-chip")

// Subproject definitions begin
// NB: FIRRTL dependency is unmanaged (and dropped in sim/lib)
lazy val chisel  = (project in rocketChipDir / "chisel3")

// Contains annotations & firrtl passes you may wish to use in rocket-chip without
// introducing a circular dependency between RC and MIDAS
/*
lazy val midasTargetUtils = (project in file("midas/targetutils"))
  .settings(commonSettings)
  .dependsOn(chisel)
*/
// Rocket-chip dependencies (subsumes making RC a RootProject)
lazy val hardfloat  = dependOnProjectDir((project in rocketChipDir / "hardfloat")
  .settings(
    commonSettings,
    crossScalaVersions := Seq("2.11.12", "2.12.4")),
      Seq((file(System.getProperty("user.dir") + "/../../../sim/midas/targetutils/"), "midas-targetutils"),
         (file(System.getProperty("user.dir") + "/midas/targetutils/"), "midas-targetutils"),
         (file("/../../sim/midas/targetutils/"), "midas-targetutils")))
  .dependsOn(chisel)



lazy val macros     = (project in rocketChipDir / "macros")
  .settings(commonSettings)

// HACK: I'm strugging to override settings in rocket-chip's build.sbt (i want
// the subproject to register a new library dependendency on midas's targetutils library)
// So instead, avoid the existing build.sbt altogether and specify the project's root at src/


lazy val rocketchip = (project in rocketChipDir / "src")
             .settings(
               commonSettings,
               scalaSource in Compile := baseDirectory.value / "main" / "scala",
               resourceDirectory in Compile := baseDirectory.value / "main" / "resources")
             .dependsOn(chisel, hardfloat, macros) 
/*
lazy val rocketchip = dependOnProjectDir((project in rocketChipDir / "src")
             .settings(
               commonSettings,
               scalaSource in Compile := baseDirectory.value / "main" / "scala",
               resourceDirectory in Compile := baseDirectory.value / "main" / "resources")
             .dependsOn(chisel, hardfloat, macros), 
      Seq((file(System.getProperty("user.dir") + "/../../../sim/midas/targetutils/"), "midas-targetutils"),
         (file(System.getProperty("user.dir") + "/midas/targetutils/"), "midas-targetutils"),
         (file("/../../sim/midas/targetutils/"), "midas-targetutils")))
*/
/*
lazy val rocketchip = (project in rocketChipDir / "src")
             .settings(
               commonSettings,
               scalaSource in Compile := baseDirectory.value / "main" / "scala",
               resourceDirectory in Compile := baseDirectory.value / "main" / "resources")
             .dependsOn(volatileProjectDir(Seq((file(System.getProperty("user.dir") + "/../../../sim/midas/targetutils/"), "midas-targetutils"),
         (file(System.getProperty("user.dir") + "/midas/targetutils/"), "midas-targetutils"),
         (file("/../../sim/midas/targetutils/"), "midas-targetutils"))))
             .dependsOn(chisel, hardfloat, macros)
*/
lazy val sifive_blocks = (project in file("sifive-blocks")).settings(commonSettings).dependsOn(rocketchip)

lazy val testchipip = project.settings(commonSettings).dependsOn(rocketchip)

lazy val icenet = project.settings(commonSettings).dependsOn(rocketchip, testchipip)

lazy val boom = project.settings(commonSettings).dependsOn(rocketchip)

lazy val example = (project in file(".")).settings(commonSettings).dependsOn(boom, icenet, testchipip, sifive_blocks)

lazy val firechip = (project in file(".")).settings(commonSettings).dependsOn(boom, icenet, testchipip, sifive_blocks)
