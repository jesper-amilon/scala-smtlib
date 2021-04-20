enablePlugins(GitVersioning)

git.useGitDescribe := true

scalacOptions ++= Seq("-unchecked", "-deprecation", "-feature")

javaOptions in IntegrationTest ++= Seq("-Xss128M")

fork in IntegrationTest := true

libraryDependencies += "org.scalatest" %% "scalatest" % "3.1.0-RC3" % "test"

logBuffered in IntegrationTest := false

parallelExecution in Test := true

lazy val commonSettings = Seq(
  organization := "com.regblanc",
  name := "scala-smtlib",
  scalaVersion := "2.12.13",
  crossScalaVersions := Seq("2.10.7", "2.11.12", "2.12.8", "2.12.13", "2.13.0", "2.13.5")
)

lazy val publishSettings = Seq(
  bintrayOrganization := Some("epfl-lara"),
  bintrayRepository := "maven",
)

lazy val root = (project in file(".")).
  configs(IntegrationTest).
  settings(commonSettings: _*).
  settings(publishSettings: _*).
  settings(Defaults.itSettings: _*)

publishMavenStyle := true

publishArtifact in Test := false

pomIncludeRepository := { _ => false }

licenses := Seq("MIT-style" -> url("https://opensource.org/licenses/MIT"))

pomExtra := (
  <url>https://github.com/epfl-lara/scala-smtlib</url>
    <scm>
      <url>git@github.com:epfl-lara/scala-smtlib.git</url>
      <connection>scm:git:git@github.com:epfl-lara/scala-smtlib.git</connection>
    </scm>
    <developers>
      <developer>
        <id>reg</id>
        <name>Regis Blanc</name>
        <url>http://regblanc.com</url>
      </developer>
    </developers>
)
