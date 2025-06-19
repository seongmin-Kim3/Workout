# 🏋️‍♀️ Workout App (iOS)

운동 목표에 따라 맞춤 운동 화면을 제공하고, 유튜브 영상으로 직접 연결되는 iOS 기반 운동 가이드 앱입니다. 사용자의 운동 목적(근력 증가 / 체중 감량 / 재활 치료)에 맞는 운동 루틴을 간편하게 확인할 수 있습니다.

---

## ✅ 주요 기능

| 기능                  | 설명                                              |
| ------------------- | ----------------------------------------------- |
| 운동 목표 선택            | 근력 증가 / 체중 감량 / 재활 치료 중 선택                      |
| 신체 정보 입력            | 키(cm), 몸무게(kg) 입력 후 저장                          |
| 운동 루틴 선택            | 분할 운동(2\~5분할) 버튼 클릭 시 YouTube 영상으로 이동           |
| 재활 운동 부위 선택         | 목, 손목, 허리, 어깨, 발목, 하체 중 선택 → 각 부위별 재활 유튜브 영상 제공 |
| 체중 감량 루틴 선택         | 유산소 운동 / 복부 운동 중 선택 → 관련 유튜브 영상 제공              |
| 상태 유지(UserDefaults) | 목표, 신체정보 저장 후 앱 재실행 시에도 유지                      |

---

## 🖼 주요 화면 구성

> 💡 GitHub에 이미지 업로드 후 아래 링크에 이미지 삽입 예정

1. **운동 목표 선택 화면**
2. **신체 정보 입력 화면**
3. **운동 루틴 분할 선택 화면**
4. **재활 치료 부위 선택 화면**
5. **체중 감량 루틴 선택 화면**

---

## 🛠 사용 기술

- **Xcode** (Storyboard 기반 UI 설계)
- **Swift** (UIKit 기반 iOS 개발)
- **UserDefaults** (간단한 사용자 데이터 저장)
- **YouTube 링크 연결** (UIApplication.shared.open)

---

## 📂 프로젝트 구조 (예시)

```
WorkoutApp/
├── ViewControllers/
│   ├── LoginViewController.swift
│   ├── GoalSelectionViewController.swift
│   ├── BodyInfoViewController.swift
│   ├── SplitSelectionViewController.swift
│   ├── BodyPartSelectionViewController.swift
│   └── WeightLossViewController.swift
├── Assets.xcassets
├── Main.storyboard
└── Info.plist
```

---

## 📢 발표자료

발표자료는 GitHub 저장소 내 `/presentation` 폴더에 PDF 파일로 업로드하였습니다.

> 🔗 예: [presentation/WorkoutApp\_Presentation.pdf](./presentation/WorkoutApp_Presentation.pdf)

---

## 🔗 제출용 GitHub 저장소 주소

> [https://github.com/your-username/workout](https://github.com/your-username/workout)

(\*업로드 완료 후 \*\*`your-username`\**을 실제 GitHub 계정명으로 수정하세요*)

---

## 🙋🏻‍♂️ 개발자

- 스마트콘텐츠학과 김성민
- 3학년 재학 중 / iOS 앱 개발 프로젝트 개인 구현

---

과제 제출을 위한 전체 준비가 끝났습니다. 궁금한 점이나 발표자료 PDF가 필요하면 언제든지 말씀해주세요!

