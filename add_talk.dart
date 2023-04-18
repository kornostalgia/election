import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/talk_on/data/database.dart';
import 'package:korelectioninfo/talk_on/data/talk.dart';
import 'package:moor/moor.dart' hide Column;

class AddTalk extends StatefulWidget {
  @override
  _AddTalkState createState() => _AddTalkState();
}

class _AddTalkState extends State<AddTalk> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? title;
  String? content;
  String? tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Q & A',
            style: TextStyle(
              fontFamily: 'Jua',
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                                text: "누구든지 선거에 관한 질문과 답변을 작성하실 수 있습니다.",
                                style: TextStyle(
                                    fontFamily: 'NanumPenScript',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.yellowAccent)),
                            TextSpan(
                                text: "\n질문 주제나 제목, 내용을 기재한 후 맨 아래의 저장하기 버튼을 눌러주세요",
                                style: TextStyle(
                                    fontFamily: 'NanumPenScript',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.deepOrangeAccent)),
                          ])),
                ],
              ),
              SizedBox(height: defaultPadding),
              renderTextFields(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          if (this.content != null && this.title != null) {
                            final dao = GetIt.instance<TalkDao>();

                            await dao.insertTalk(
                              TalkCompanion(
                                title: Value(this.title!),
                                content: Value(this.content!),
                              ),
                               this.tag!,
                            );
                            Navigator.of(context).pop();
                          }
                        }
                      },
                      child: Text('저 장 하 기',
                          style: TextStyle(
                              fontFamily: 'NanumPenScript',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.yellowAccent)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  renderTextFields() {
    return Expanded(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: '주제나 제목을 적어주세요(최대 10자)',
            ),
            onSaved: (val) {
              this.title = val;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: '구체적인 내용을 적어주새요',
            ),
            maxLines: 3,
            onSaved: (val) {
              this.content = val;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: '자신을 나타내는 대화명을 만드세요',
            ),
            onSaved: (val) {
              this.tag = val;
            },
          ),
        ],
      ),
    );
  }
}