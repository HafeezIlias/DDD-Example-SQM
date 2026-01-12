@echo off
echo ========================================
echo Running Tests and Generating Coverage
echo ========================================
call gradlew.bat clean test jacocoRootReport

echo.
echo ========================================
echo Running SonarQube Analysis
echo ========================================
set SONAR_TOKEN=b46e958164a3c73125fd9d2c16849d76d561458f
call gradlew.bat sonar

echo.
echo ========================================
echo Analysis Complete!
echo View results at: https://sonarcloud.io/dashboard?id=hafeezilias_softwarequality
echo ========================================
pause
