$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QInputDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD cancelButtonText
   METHOD setCancelButtonText
   METHOD comboBoxItems
   METHOD setComboBoxItems
   METHOD doubleDecimals
   METHOD setDoubleDecimals
   METHOD doubleMaximum
   METHOD setDoubleMaximum
   METHOD doubleMinimum
   METHOD setDoubleMinimum
   METHOD doubleValue
   METHOD setDoubleValue
   METHOD inputMode
   METHOD setInputMode
   METHOD intMaximum
   METHOD setIntMaximum
   METHOD intMinimum
   METHOD setIntMinimum
   METHOD intStep
   METHOD setIntStep
   METHOD intValue
   METHOD setIntValue
   METHOD isComboBoxEditable
   METHOD setComboBoxEditable
   METHOD labelText
   METHOD setLabelText
   METHOD okButtonText
   METHOD setOkButtonText
   METHOD open
   METHOD options
   METHOD setOptions
   METHOD setDoubleRange
   METHOD setIntRange
   METHOD setOption
   METHOD testOption
   METHOD textEchoMode
   METHOD setTextEchoMode
   METHOD textValue
   METHOD setTextValue
   METHOD done
   METHOD minimumSizeHint
   METHOD setVisible
   METHOD sizeHint
   METHOD getDouble
   METHOD getInt
   METHOD getItem
   METHOD getText
   METHOD getMultiLineText

   METHOD onDoubleValueChanged
   METHOD onDoubleValueSelected
   METHOD onIntValueChanged
   METHOD onIntValueSelected
   METHOD onTextValueChanged
   METHOD onTextValueSelected

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

/*
QString cancelButtonText () const
*/
$method=|QString|cancelButtonText|

/*
void setCancelButtonText ( const QString & text )
*/
$method=|void|setCancelButtonText|const QString &

/*
QStringList comboBoxItems () const
*/
$method=|QStringList|comboBoxItems|

/*
void setComboBoxItems ( const QStringList & items )
*/
$method=|void|setComboBoxItems|const QStringList &

/*
int doubleDecimals () const
*/
$method=|int|doubleDecimals|

/*
void setDoubleDecimals ( int decimals )
*/
$method=|void|setDoubleDecimals|int

/*
double doubleMaximum () const
*/
$method=|double|doubleMaximum|

/*
void setDoubleMaximum ( double max )
*/
$method=|void|setDoubleMaximum|double

/*
double doubleMinimum () const
*/
$method=|double|doubleMinimum|

/*
void setDoubleMinimum ( double min )
*/
$method=|void|setDoubleMinimum|double

/*
double doubleValue () const
*/
$method=|double|doubleValue|

/*
void setDoubleValue ( double value )
*/
$method=|void|setDoubleValue|double

/*
InputMode inputMode () const
*/
$method=|QInputDialog::InputMode|inputMode|

/*
void setInputMode ( InputMode mode )
*/
$method=|void|setInputMode|QInputDialog::InputMode

/*
int intMaximum () const
*/
$method=|int|intMaximum|

/*
void setIntMaximum ( int max )
*/
$method=|void|setIntMaximum|int

/*
int intMinimum () const
*/
$method=|int|intMinimum|

/*
void setIntMinimum ( int min )
*/
$method=|void|setIntMinimum|int

/*
int intStep () const
*/
$method=|int|intStep|

/*
void setIntStep ( int step )
*/
$method=|void|setIntStep|int

/*
int intValue () const
*/
$method=|int|intValue|

/*
void setIntValue ( int value )
*/
$method=|void|setIntValue|int

/*
bool isComboBoxEditable () const
*/
$method=|bool|isComboBoxEditable|

/*
void setComboBoxEditable ( bool editable )
*/
$method=|void|setComboBoxEditable|bool

/*
QString labelText () const
*/
$method=|QString|labelText|

/*
void setLabelText ( const QString & text )
*/
$method=|void|setLabelText|const QString &

/*
QString okButtonText () const
*/
$method=|QString|okButtonText|

/*
void setOkButtonText ( const QString & text )
*/
$method=|void|setOkButtonText|const QString &

/*
void open ( QObject * receiver, const char * member )
*/
$method=|void|open|QObject *,const char *

/*
InputDialogOptions options () const
*/
$method=|QInputDialog::InputDialogOptions|options|

/*
void setOptions ( InputDialogOptions options )
*/
$method=|void|setOptions|QInputDialog::InputDialogOptions

/*
void setDoubleRange ( double min, double max )
*/
$method=|void|setDoubleRange|double,double

/*
void setIntRange ( int min, int max )
*/
$method=|void|setIntRange|int,int

/*
void setOption ( InputDialogOption option, bool on = true )
*/
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

/*
bool testOption ( InputDialogOption option ) const
*/
$method=|bool|testOption|QInputDialog::InputDialogOption

/*
QLineEdit::EchoMode textEchoMode () const
*/
$method=|QLineEdit::EchoMode|textEchoMode|

/*
void setTextEchoMode ( QLineEdit::EchoMode mode )
*/
$method=|void|setTextEchoMode|QLineEdit::EchoMode

/*
QString textValue () const
*/
$method=|QString|textValue|

/*
void setTextValue ( const QString & text )
*/
$method=|void|setTextValue|const QString &

/*
void done ( int result )
*/
$method=|void|done|int

/*
QSize minimumSizeHint () const
*/
$method=|QSize|minimumSizeHint|

/*
void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double minValue = -2147483647, double maxValue = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
*/
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=0,Qt::WindowFlags=0

/*
static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int minValue = -2147483647, int maxValue = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
*/
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=0,Qt::WindowFlags=0

/*
static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

/*
static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode echo = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

/*
static QString getMultiLineText(QWidget *parent, const QString &title, const QString &label, const QString &text = QString(), bool *ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
$staticMethod=|QString|getMultiLineText|QWidget *,const QString &,const QString &,const QString &=QString(),bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

#pragma ENDDUMP
