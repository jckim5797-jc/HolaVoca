@echo off
chcp 65001 >nul
title HolaVoca GitHub Push
cd /d "C:\Users\jckim\Desktop\project1_260904"

echo ========================================================
echo   [HolaVoca] 30일 완성 커리큘럼(총 43개 페이지) GitHub 배포
echo ========================================================
echo.
echo 현재 로컬에 30일 코스(Day 01~30) 및 43개 전체 사이트맵 커밋이 완료되어 있습니다.
echo 지금 GitHub로 푸시를 진행합니다...
echo.

git push origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo  [성공] 푸시가 완료되었습니다!
    echo  Cloudflare Pages에서 약 1~2분 내로 자동 배포됩니다.
    echo  https://holavoca.com/curriculum/ 에서 확인해보세요.
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo  [안내] 브라우저 로그인 창이 떴다면 로그인을 완료해주세요.
    echo ========================================================
)

echo.
pause
