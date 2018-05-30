%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=QString cancelButtonText () const
$method=|QString|cancelButtonText|

$prototype=void setCancelButtonText ( const QString & text )
$method=|void|setCancelButtonText|const QString &

$prototype=QStringList comboBoxItems () const
$method=|QStringList|comboBoxItems|

$prototype=void setComboBoxItems ( const QStringList & items )
$method=|void|setComboBoxItems|const QStringList &

$prototype=int doubleDecimals () const
$method=|int|doubleDecimals|

$prototype=void setDoubleDecimals ( int decimals )
$method=|void|setDoubleDecimals|int

$prototype=double doubleMaximum () const
$method=|double|doubleMaximum|

$prototype=void setDoubleMaximum ( double max )
$method=|void|setDoubleMaximum|double

$prototype=double doubleMinimum () const
$method=|double|doubleMinimum|

$prototype=void setDoubleMinimum ( double min )
$method=|void|setDoubleMinimum|double

$prototype=double doubleValue () const
$method=|double|doubleValue|

$prototype=void setDoubleValue ( double value )
$method=|void|setDoubleValue|double

$prototype=InputMode inputMode () const
$method=|QInputDialog::InputMode|inputMode|

$prototype=void setInputMode ( InputMode mode )
$method=|void|setInputMode|QInputDialog::InputMode

$prototype=int intMaximum () const
$method=|int|intMaximum|

$prototype=void setIntMaximum ( int max )
$method=|void|setIntMaximum|int

$prototype=int intMinimum () const
$method=|int|intMinimum|

$prototype=void setIntMinimum ( int min )
$method=|void|setIntMinimum|int

$prototype=int intStep () const
$method=|int|intStep|

$prototype=void setIntStep ( int step )
$method=|void|setIntStep|int

$prototype=int intValue () const
$method=|int|intValue|

$prototype=void setIntValue ( int value )
$method=|void|setIntValue|int

$prototype=bool isComboBoxEditable () const
$method=|bool|isComboBoxEditable|

$prototype=void setComboBoxEditable ( bool editable )
$method=|void|setComboBoxEditable|bool

$prototype=QString labelText () const
$method=|QString|labelText|

$prototype=void setLabelText ( const QString & text )
$method=|void|setLabelText|const QString &

$prototype=QString okButtonText () const
$method=|QString|okButtonText|

$prototype=void setOkButtonText ( const QString & text )
$method=|void|setOkButtonText|const QString &

$prototype=void open ( QObject * receiver, const char * member )
$method=|void|open|QObject *,const char *

$prototype=InputDialogOptions options () const
$method=|QInputDialog::InputDialogOptions|options|

$prototype=void setOptions ( InputDialogOptions options )
$method=|void|setOptions|QInputDialog::InputDialogOptions

$prototype=void setDoubleRange ( double min, double max )
$method=|void|setDoubleRange|double,double

$prototype=void setIntRange ( int min, int max )
$method=|void|setIntRange|int,int

$prototype=void setOption ( InputDialogOption option, bool on = true )
$method=|void|setOption|QInputDialog::InputDialogOption,bool=true

$prototype=bool testOption ( InputDialogOption option ) const
$method=|bool|testOption|QInputDialog::InputDialogOption

$prototype=QLineEdit::EchoMode textEchoMode () const
$method=|QLineEdit::EchoMode|textEchoMode|

$prototype=void setTextEchoMode ( QLineEdit::EchoMode mode )
$method=|void|setTextEchoMode|QLineEdit::EchoMode

$prototype=QString textValue () const
$method=|QString|textValue|

$prototype=void setTextValue ( const QString & text )
$method=|void|setTextValue|const QString &

$prototype=void done ( int result )
$method=|void|done|int

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

$prototype=static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double minValue = -2147483647, double maxValue = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
$staticMethod=|double|getDouble|QWidget *,const QString &,const QString &,double=0,double=-2147483647,double=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int minValue = -2147483647, int maxValue = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
$staticMethod=|int|getInt|QWidget *,const QString &,const QString &,int=0,int=-2147483647,int=2147483647,int=1,bool *=0,Qt::WindowFlags=0

$prototype=static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getItem|QWidget *,const QString &,const QString &,const QStringList &,int=0,bool=true,bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

$prototype=static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode echo = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getText|QWidget *,const QString &,const QString &,QLineEdit::EchoMode=QLineEdit::Normal,const QString &=QString(),bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

$prototype=static QString getMultiLineText(QWidget *parent, const QString &title, const QString &label, const QString &text = QString(), bool *ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
$staticMethod=|QString|getMultiLineText|QWidget *,const QString &,const QString &,const QString &=QString(),bool *=0,Qt::WindowFlags=0,Qt::InputMethodHints=Qt::ImhNone

$beginSignals
$signal=|doubleValueChanged(double)
$signal=|doubleValueSelected(double)
$signal=|intValueChanged(int)
$signal=|intValueSelected(int)
$signal=|textValueChanged(QString)
$signal=|textValueSelected(QString)
$endSignals

#pragma ENDDUMP
