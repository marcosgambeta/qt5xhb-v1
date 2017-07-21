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
HB_FUNC_STATIC( QINPUTDIALOG_GETDOUBLE )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) && ISOPTNUM(7) && ISOPTLOG(8) && ISOPTNUM(9) )
  {
    bool par8;
    int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
    RDOUBLE( QInputDialog::getDouble ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), OPDOUBLE(4,0), OPDOUBLE(5,-2147483647), OPDOUBLE(6,2147483647), OPINT(7,1), &par8, (Qt::WindowFlags) par9 ) );
    hb_storl( par8, 8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int minValue = -2147483647, int maxValue = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETINT )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTNUM(4) && ISOPTNUM(5) && ISOPTNUM(6) && ISOPTNUM(7) && ISOPTLOG(8) && ISOPTNUM(9) )
  {
    bool par8;
    int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
    RINT( QInputDialog::getInt ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), OPINT(4,0), OPINT(5,-2147483647), OPINT(6,2147483647), OPINT(7,1), &par8, (Qt::WindowFlags) par9 ) );
    hb_storl( par8, 8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETITEM )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISARRAY(4) && ISOPTNUM(5) && ISOPTLOG(6) && ISOPTLOG(7) && ISOPTNUM(8) && ISOPTNUM(9) )
  {
    bool par7;
    int par8 = ISNIL(8)? (int) 0 : hb_parni(8);
    int par9 = ISNIL(9)? (int) Qt::ImhNone : hb_parni(9);
    RQSTRING( QInputDialog::getItem ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), PQSTRINGLIST(4), OPINT(5,0), OPBOOL(6,true), &par7, (Qt::WindowFlags) par8, (Qt::InputMethodHints) par9 ) );
    hb_storl( par7, 7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode echo = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETTEXT )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISNUM(4) && ISOPTCHAR(5) && ISOPTLOG(6) && ISOPTNUM(7) && ISOPTNUM(8) )
  {
    int par4 = ISNIL(4)? (int) QLineEdit::Normal : hb_parni(4);
    bool par6;
    int par7 = ISNIL(7)? (int) 0 : hb_parni(7);
    int par8 = ISNIL(8)? (int) Qt::ImhNone : hb_parni(8);
    RQSTRING( QInputDialog::getText ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), (QLineEdit::EchoMode) par4, OPQSTRING(5,QString()), &par6, (Qt::WindowFlags) par7, (Qt::InputMethodHints) par8 ) );
    hb_storl( par6, 6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString getMultiLineText(QWidget *parent, const QString &title, const QString &label, const QString &text = QString(), bool *ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETMULTILINETEXT )
{
  if( ISQWIDGET(1) && ISCHAR(2) && ISCHAR(3) && ISOPTCHAR(4) && ISOPTLOG(5) && ISOPTNUM(6) && ISOPTNUM(7) )
  {
    bool par5;
    int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
    int par7 = ISNIL(7)? (int) Qt::ImhNone : hb_parni(7);
    RQSTRING( QInputDialog::getMultiLineText ( PQWIDGET(1), PQSTRING(2), PQSTRING(3), OPQSTRING(4,QString()), &par5, (Qt::WindowFlags) par6, (Qt::InputMethodHints) par7 ) );
    hb_storl( par5, 5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
