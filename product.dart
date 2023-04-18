class Product {
  final String? title, image, category, price, subtitle, snack;

  Product({this.title, this.image, this.category,
    required this.price, this.subtitle, this.snack});
}

List<Product> myProducts = [
  Product(
      title: "선거사무소장",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfNTEg/MDAxNjMwMjIyMDgyODQ5.WzHSmVs-_myb31ERFuahsos1X0PfVmlU5QTvxAmUGeAg.UfeuGWc40P6XZDFRjT42ptmi_ww82s0uslJ9Zqo5sPYg.PNG/140.png?type=w1600",
      category: "모든 선거 가능, 신고 필요",
      price: "90000",
      snack: "1일 근무시 지급 가능한 수당과 실비의 합계입니다."
          "\n9만원 = 수당 7만원 + 실비 2만원"
          "\n선거사무장에게 1일 9만원을 초과하여 지급하는 경우 매수죄로 처벌됨",
      subtitle: ""
          "(예비)후보자마다 선거운동이 가능한 자 중 1명만 선임 가능"
          "\n선거사무장은 선거사무소에 두어야 하므로 선거사무소를 설치하지 않은 경우 선거사무장을 둘 수 없으나 "
          "선거사무장을 선임하지 않은 경우에는 (예비)후보자가 선거사무장을 겸한 것으로 봄"
          "\n대선 또는 비례선거의 후보자가 사무장을 선임하지 않은 경우 그 정당의 회계책임자가 선거사무장을 겸함"
          "\n선거사무장은 선거운동을 할 수 있는 사람 중에 선거사무원을 둘 수 있으며 그 인원은 선거별로 다름"
  ),
  Product(
      title: "회계책임자",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMTY5/MDAxNjMwMjIyMDgzMDYz.H3OxBoA3QtqnCjElc7X0YukrO6A6Y3MEH_TB1RIXyyIg.66GLSMy3pXfpxCyWTVwT5bOmmxgyy_E93Yyn-0eK6swg.PNG/135.png?type=w1600",
      category: "모든 선거, 신고 필요",
      price: "15000",
      snack: "1일 근무시 지급 가능한 수당과 실비의 합계입니다."
          "\n9만원 = 수당 7만원 + 실비 2만원"
          "\n회계책임자에게 1일 9만원을 초과하여 지급하는 경우 매수죄로 처벌됨",
      subtitle: ""
          "(예비)후보자, 선거연락소마다 선거운동이 가능한 자 중 1명만 선임 가능"
          "\n(예비)후보등록, 선거연락소 설치하는 때에 회게책임자를 같이 신고하여야 함"
          "\n후보자 등이 겸임 가능하고 신고하기 전에 미리 정치자금 수입과 지출용 예금계좌를 미리 만들어야 함"
          "\n회계책임자로 신고된 자는 다른 (예비)후보자의 회계책임자가 될 수 없음"
  ),
  Product(
      title: "선거연락소장",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMzMg/MDAxNjMwMjIyMDgzMDQ1.iSmeOg6sqmpD_f8MNbnol48e09A_9bvyTWR6gaRiUeog._dHhTVu9Oa2KJNNHg0J_S1mQmmJQQ4bGxn_gnJGLvKEg.PNG/136.png?type=w1600",
      category: "예비후보X, 비례선거X 지방의원선거X, 신고 필요",
      price: "90000",
      snack: "1일 근무시 지급 가능한 수당과 실비의 합계입니다."
          "\n9만원 = 수당 7만원 + 실비 2만원"
          "\n선거연락소장에게 1일 9만원을 초과하여 지급하는 경우 매수죄로 처벌됨",
      subtitle: ""
          "선거연락소를 둘 수 있는 후보자만 선거연락소마다 1명씩 선임 가능"
          "\n예비후보와 비례선거,지방의원선거에서는 선거연락소를 설치할 수 없으므로 선거연락소장을 둘 수 없음"
          "\n대선 또는 비례선거의 후보자가 사무장을 선임하지 않은 경우 그 정당의 회계책임자가 선거사무장을 겸함"
  ),
  Product(
      title: "선거사무원",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMTAg/MDAxNjMwMjIyMDgyODgx.emvIYeJeNLxt-u8dHdlFAyRtp-5ZrxuvcosKtr5ODv8g.tZstNKGP572tmehhf81sAx2JuRp294yI81QE10Vqpuog.PNG/138.png?type=w1600",
      category: "모든 선거, 신고 필요",
      price: "70000",
      snack: "1일 근무시 지급 가능한 수당과 실비의 합계입니다."
          "\n7만원 = 수당 5만원 + 실비 2만원"
          "\n선거사무원에게 1일 7만원을 초과하여 지급하는 경우 매수죄로 처벌됨",
      subtitle: ""
          "(예비)후보자마다 선거별로 일정 수의 선거사무원을 둘 수 있음"
          "\n예비후보자가 둘 수 있는 인원(선거사무장을 인원 수에 포함함)"
          "\n대선(10), 지역구국선(3), 광역장선거(5), 기초장선거(3), 지방의원선거(2), 비례(0)"
          "\n후보자가 둘 수 있는 인원"
          "\n각 선거별로 선거사무소와 선거연락소에 두는 선거사무원의 인원이 다름"
  ),
  Product(
      title: "선거벽보",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMTc2/MDAxNjMwMjIyMDgyOTk1.yxdY_YVUQrmGURnt7vjD80L6oCzcjDurY9j8-84LLOYg.InfZW5ajrKM3Jq8aGluBgg9p7J0xvWdvN0vFxpNsFN4g.PNG/137.png?type=w1600",
      category: "모든 선거 가능, 신고 필요",
      price: "579000",
      snack: "1면당 기획도안료를 말하며 내용이 같은 벽보, 공보, 공약서는 1회만 산정"
          "\n인쇄료는 별도 산정하여 보전"
          "\n선거별로 통상가격이 다름",
      subtitle: ""
          "길이 53센티, 너비 38센티, 종이, 1종으로 제작함"
          "\n무소속 후보는 무소속이라고 게재하고 다른 사람의 사진을 게재할 수 없음"
          "\n제출된 벽보는 제출마감일까지 정정, 삭제 가능하나 추가, 변경은 불가함"
          "\n제출마감일에 미제출하거나 규격 초과나 미달시 첩부하지 않음"
          "\n후보등록마감일 후 5일까지 제출하고 마감일 후 2일까지 첩부함"
  ),
  Product(
      title: "선거공보",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMjkg/MDAxNjMwMjIyMDgzMTc2.O8KuKbxBt44Cp-fWHtarZkF7Uqs-lYVpN5Wzx2G1wowg.pEXi8h46SfqzhOetxN4OJGa6iamHr3fZJVCsTz_3GRcg.PNG/134.png?type=w1600",
      category: "모든 선거(대선은 전단형 추가), 제출 필요",
      price: "155000",
      snack: "1면당 기획도안료를 말하며 내용이 같은 벽보, 공보, 공약서는 1회만 산정"
          "\n인쇄료는 별도 산정하여 보전"
          "\n선거별로 통상가격이 다름",
      subtitle: ""
          "길이 27센티, 너비 19센티 이내, 1종으로 제작함"
          "\n선거별로 작성 면수가 다르고 앞면은 선거명과 선거구명을 게재함"
          "\n둘째 면에는 후보자 정보공개자료와 소명자료만 게재함"
          "\n후보자등록마감일 후 7일까지 제출함"
          "\n점자형 선거공보도 제출하되 책자형에 바코드로 표시하여 대체 가능함"
  ),
  Product(
      title: "선거공약서",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMjU0/MDAxNjMwMjIyMDgzNzg2.9YlMKcDMSF3zAh4p9sUw9ZwUlbEWUfJL1aVoVylShz4g.h-ACKHwB1wvElc8DDmg4S3fXHr-1IB-7zOD1tvCeh4Ig.PNG/132.png?type=w1600",
      category: "대선과 지자체장선거만 해당, 제출 필요",
      price: "152000",
      snack: "1면당 기획도안료를 말하며 내용이 같은 벽보, 공보, 공약서는 1회만 산정"
          "\n인쇄료는 별도 산정하여 보전"
          "\n선거별로 통상가격이 다름",
      subtitle: ""
          "선거공약과 추진계획(목표, 순위, 절차, 기간, 재원 등)을 게재함"
          "\n1면 이내에 사진, 학력, 경력, 홍보사항 게재 가능함"
          "\n다른 정당이나 후보자에 관한 사항은 게재할 수 없음"
          "\n(앞면) 선거공약서, 선거명, 성명, 정당을 게재함"
          "\n(뒷면) 작성근거, 인쇄소의 명칭, 주소, 전화번호를 게재함"
  ),
  Product(
      title: "현수막(거리용, 외벽용)",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMjE3/MDAxNjMwMjIyMDgzNzg1.vDj2cXYmeTxywHI9nuHcDT7jfAMmxkGxLmrFnHo9T7kg.C92HeaCrtSHxybZWpPD9tXDy4vebKsWt6hEodMFFZuQg.PNG/131.png?type=w1600",
      category: "비례는 거리용x, 신고 불요",
      price: "15000",
      snack: "1만 5천원(제곱미터당, 설치철거비 포함)"
          "\n외벽 게시용은 1만 7천원((제곱미터당, 설치철거비 포함)"
          "\n거리 게시용은 이동게시 인건비 별도, 외벽 게시용은 장비임차료 별도",
      subtitle: ""
          "(거리 현수막) 선거구 안의 읍면동 수의 2배까지 게시 가능함"
          "\n10제곱미터 이내의 천으로 제작하여 일정 시설에 고정하여 게시함"
          "\n육교 등 도로를 가로지르거나 다른 후보자의 현수막을 가릴 수 없음"
          "\n(외벽설치 현수막) 수량이나 크기 재한이 없음"
          "\n예비후보 등록 전까지 선거사무소 외벽에 설치 못함"
  ),
  Product(
      title: "명함",
      image: "https://cafeptthumb-phinf.pstatic.net/MjAyMTA4MjlfMTYz/MDAxNjMwMjIyMDgyODkw.6reMpmWqCg4uzE1AybamIGp70sNTvNtZ9WI-g6mA0wkg.SonZYHQ6uXspdf5uACpZ-KdAkIiTll1kL4cav7vSxxUg.PNG/139.png?type=w1600",
      category: "모든 선거, 신고 불요",
      price: "0",
      snack: "통상 인쇄요금 가격으로 산정함",
      subtitle: ""
          "길이 9센티, 너비 5센티 이내, 여러 종류로 제작,배부가 가능함"
          "\n출마 예정자도 선거일 전 180일(대선은 24일)부터 등록 전까지 명함 배부 가능"
          "\n정규학력이 아닌 유사학력을 게재할 수 없고 기호를 알 수 있는 경우 게재 가능"
          "\n후보 등록 전이라도 정당 추천 후보로 확정된 경우 후보 명칭 게재 가능"
          "\n선거사무장과 사무원, 지정 1인은 예비후보와 함께 다니면서 명함 배부 가능"
  ),
];