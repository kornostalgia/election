class Answer {
   final int num;
   final int annum;
   final String answer;

  const Answer({
    required this.num,
    required this.annum,
    required this.answer,
  });
  //
  // factory Answer.fromJson(Map<String, dynamic> json) => Answer(
  //   num: json['num'],
  //   annum: json['annum'],
  //   answer: json['answer'],
  // );
  //
  // Map<String, dynamic> toJson() => {
  //   'num': num,
  //   'annum': annum,
  //   'answer': answer,
  // };
}