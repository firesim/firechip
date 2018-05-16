lazy val commonSettings = Seq(
  organization := "edu.berkeley.cs",
  version := "1.0",
  scalaVersion := "2.11.12",
  traceLevel := 15,
  scalacOptions ++= Seq("-deprecation","-unchecked"),
  libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.1" % "test",
  libraryDependencies += "org.json4s" %% "json4s-native" % "3.5.3",
  libraryDependencies += "org.scala-lang" % "scala-reflect" % scalaVersion.value,
  addCompilerPlugin("org.scalamacros" % "paradise" % "2.1.0" cross CrossVersion.full),
  resolvers ++= Seq(
    Resolver.sonatypeRepo("snapshots"),
    Resolver.sonatypeRepo("releases"),
    Resolver.mavenLocal))

lazy val rocketchip = RootProject(file("rocket-chip"))

lazy val sifive_blocks = (project in file("sifive-blocks")).settings(commonSettings).dependsOn(rocketchip)

lazy val testchipip = project.settings(commonSettings).dependsOn(rocketchip)

lazy val icenet = project.settings(commonSettings).dependsOn(rocketchip, testchipip)

lazy val boom = project.settings(commonSettings).dependsOn(rocketchip)

lazy val example = (project in file(".")).settings(commonSettings).dependsOn(boom, icenet, testchipip, sifive_blocks)
