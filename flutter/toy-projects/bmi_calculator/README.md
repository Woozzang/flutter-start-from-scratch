# bmi_calculator
신장과 체중으로 bmi 를 계산해주는 앱 ⚖️
</br></br>

| DrinkWaterVC             |  ProfileVC |
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/70905219/170302310-39646591-7cb7-4ef5-9894-20358f2be4b6.png" width= "70%"> | <img src="https://user-images.githubusercontent.com/70905219/170302348-27ec6ded-bb94-42de-a0e9-9e06821967e5.png" width= "70%">

</br></br>
## 다뤄 본 내용
- **모든 궁금한 내용은 우선 공식문서를 찾아보는 것이 답이라는 것을 상기하였습니다.**
- `Expanded`, `Column`, `Row` 등의 위젯을 사용하여 그리드 형태의 UI 를 구현하였습니다.
- [Pub.dev](https://pub.dev) 에서 패키지를 추가하여 앱에 적용해보았습니다.
- 반복되는 위젯을 커스텀 위젯으로 추출하여 재사용성을 높이고, 위젯 트리를 깔끔하게 수정하였습니다.
- 다양한 제스처를 인식할 수 있는 `GestureDetector` 를 사용하여 탭 동작을 처리하였습니다.
- `Navigator` 를 이용하여 Multi-page App을 구현하였습니다.
  - MaterialApp 의 `routes` 속성에 복수개의 경로를 지정해보았습니다.   
  - MaterialApp 의 `intialRoute` 와 `home` 을 동시에 지정할 수 없다는 것을 알게 되었습니다.
- 함수 타입을 지정하는 법을 리마인드하고, 1급 객체로서의 함수의 특징을 활용하였습니다. (함수 전달)
   ```dart
     void Function() onTapHandler;
   ```
- Baseline 을 기준으로 두 위젯을 정렬해보았습니다.
- 글로벌 상수 앞에는 `k`를 붙여 컨벤션을 따랐습니다.
