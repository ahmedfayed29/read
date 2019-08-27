import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'سياسة الخصوصية',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,

      ),
      body: ListView(
        children: <Widget>[
          new Text('من بالغ الأهمية لدينا في إدراك أن نحتفظ بسرية وأمان معلوماتكم الشخصية، ويُشار لأي معلومات عنكم تزودوننا بها عند استخدام موقعنا، مثل المعلومات التي تقدمونها عند التسجيل للحصول على حساب مستخدم أو عند الدخول في تعاملات عبر الموقع والتي قد تتضمن (على سبيل المثال لا الحصر) اسمك ومعلومات الاتصال والجنس وتاريخ الميلاد والمهنة؛ جمعاً بـ"معلومات شخصية"، كما أن أي إشارة لـ "نحن" و"لنا" تُعتبَر إشارة إلى إدراك.'
        'سوف نبذل الجهود المعقولة تجارياً للحفاظ على أمان معلوماتك الشخصية عملاً بسياسة الخصوصية هذه'
              'تنطبق سياسة الخصوصية هذه فقط على المعلومات التي نجمعها من خلال موقع إدراك (يشار له فيما يلي بـ "الموقع" وهو يشمل جميع المحتوى والصفحات الموجودة ضمن الموقع الإلكتروني edraak.org) ولا تنطبق على المعلومات التي قد نحصل عليها منك بطرق أخرى.'
              'الموافقة على نقل المعلومات الشخصية'
              'بموجب هذه الوثيقة، أنت توافق على جمع إدراك لمعلوماتك الشخصية - كما بينت في سياسة الخصوصية هذه - واستخدامها والإفصاح عنها والاحتفاظ بها، بما في ذلك على سبيل المثال لا الحصر: نقل معلوماتك الشخصية بين إدراك والغير والشركات التابعة والفرعية المبينة في سياسة الخصوصية هذه.'
              'المعلومات التي نجمعها وكيف نستخدمها'
              'نحن نقوم بجمع المعلومات بما فيها المعلومات الشخصية عندما تقوم بالتسجيل للحصول على حساب مستخدم و/أو المشاركة في المساقات و/أو أن ترسل لنا بريداً إلكترونياً و/أو تشارك في منتدياتنا العامة، كما نقوم بجمع بعض معلومات الاستخدام حول أداء الطلبة وأنماط التعلّم، بالإضافة لما سبق فنحن نتتبّع المعلومات التي تبيّن سجلات مثل الصفحات التي تزورها في موقعنا ومواعيد زيارتها والترتيب الذي تمت زيارتها فيه وأي الروابط التشعبية وغيرها من أدوات واجهة المستخدم قد استعملتها.'
              'نستخدم مجموعة متنوعة من أدوات تحليل الإنترنت لجمع هذه المعلومات غير أن بعض المعلومات تُجمَع بواسطة الكوكيز، ويجب أن تكون قادراً على أن تتحكم فيما إذا كان متصفحك يقبل الكوكيز وكيفية قبوله لها حيث أن معظم المتصفحات تقدّم تعليمات لكيفية إعادة ضبط المتصفح كي يرفض الكوكيز من خلال قسم "المساعدة" في شريط الأدوات، غير أنك إذا رفضت "الكوكيز" من موقعنا فإن العديد من الخصائص والفوائد التي يقدّمها موقعنا لك قد لا تعمل كما ينبغي.'
              'الاستخدام والإفصاح للغير'
              ''
          )
        ],
      ),
    );
  }
}
