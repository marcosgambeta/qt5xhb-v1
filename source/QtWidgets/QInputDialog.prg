/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QInputDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QInputDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QInputDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInputDialog>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInputDialog>
#endif

/*
QInputDialog ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QINPUTDIALOG_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QInputDialog * o = new QInputDialog ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QINPUTDIALOG_DELETE )
{
  QInputDialog * obj = (QInputDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString cancelButtonText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_CANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->cancelButtonText (  ).toLatin1().data() );
  }
}

/*
void setCancelButtonText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCANCELBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCancelButtonText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QStringList comboBoxItems () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_COMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->comboBoxItems (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void setComboBoxItems ( const QStringList & items )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXITEMS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setComboBoxItems ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int doubleDecimals () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->doubleDecimals (  ) );
  }
}

/*
void setDoubleDecimals ( int decimals )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEDECIMALS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDoubleDecimals ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double doubleMaximum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->doubleMaximum (  ) );
  }
}

/*
void setDoubleMaximum ( double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleMaximum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double doubleMinimum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->doubleMinimum (  ) );
  }
}

/*
void setDoubleMinimum ( double min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleMinimum ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
double doubleValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_DOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->doubleValue (  ) );
  }
}

/*
void setDoubleValue ( double value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLEVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    obj->setDoubleValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InputMode inputMode () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->inputMode (  ) );
  }
}

/*
void setInputMode ( InputMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINPUTMODE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setInputMode (  (QInputDialog::InputMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int intMaximum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->intMaximum (  ) );
  }
}

/*
void setIntMaximum ( int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMAXIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIntMaximum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int intMinimum () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->intMinimum (  ) );
  }
}

/*
void setIntMinimum ( int min )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTMINIMUM )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIntMinimum ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int intStep () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTSTEP )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->intStep (  ) );
  }
}

/*
void setIntStep ( int step )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTSTEP )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIntStep ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int intValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_INTVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->intValue (  ) );
  }
}

/*
void setIntValue ( int value )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIntValue ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isComboBoxEditable () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_ISCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isComboBoxEditable (  ) );
  }
}

/*
void setComboBoxEditable ( bool editable )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETCOMBOBOXEDITABLE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setComboBoxEditable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString labelText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_LABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->labelText (  ).toLatin1().data() );
  }
}

/*
void setLabelText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETLABELTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setLabelText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString okButtonText () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->okButtonText (  ).toLatin1().data() );
  }
}

/*
void setOkButtonText ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOKBUTTONTEXT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setOkButtonText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void open ( QObject * receiver, const char * member )
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPEN )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    const char * par2 = hb_parc(2);
    obj->open ( par1,  (const char *) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
InputDialogOptions options () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_OPTIONS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->options (  ) );
  }
}

/*
void setOptions ( InputDialogOptions options )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTIONS )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOptions (  (QInputDialog::InputDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDoubleRange ( double min, double max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETDOUBLERANGE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    double par1 = hb_parnd(1);
    double par2 = hb_parnd(2);
    obj->setDoubleRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIntRange ( int min, int max )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETINTRANGE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIntRange ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOption ( InputDialogOption option, bool on = true )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETOPTION )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOption (  (QInputDialog::InputDialogOption) par1, (bool) ISNIL(2)? true : hb_parl(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool testOption ( InputDialogOption option ) const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TESTOPTION )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->testOption (  (QInputDialog::InputDialogOption) par1 ) );
  }
}


/*
QLineEdit::EchoMode textEchoMode () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textEchoMode (  ) );
  }
}

/*
void setTextEchoMode ( QLineEdit::EchoMode mode )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTECHOMODE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTextEchoMode (  (QLineEdit::EchoMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString textValue () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_TEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->textValue (  ).toLatin1().data() );
  }
}

/*
void setTextValue ( const QString & text )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETTEXTVALUE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTextValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void done ( int result )
*/
HB_FUNC_STATIC( QINPUTDIALOG_DONE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->done ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_MINIMUMSIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QINPUTDIALOG_SETVISIBLE )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QINPUTDIALOG_SIZEHINT )
{
  QInputDialog * obj = (QInputDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
static double getDouble ( QWidget * parent, const QString & title, const QString & label, double value = 0, double minValue = -2147483647, double maxValue = 2147483647, int decimals = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETDOUBLE )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  double par4 = ISNIL(4)? 0 : hb_parnd(4);
  double par5 = ISNIL(5)? -2147483647 : hb_parnd(5);
  double par6 = ISNIL(6)? 2147483647 : hb_parnd(6);
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  hb_retnd( QInputDialog::getDouble ( par1, par2, par3, par4, par5, par6, (int) ISNIL(7)? 1 : hb_parni(7), &par8,  (Qt::WindowFlags) par9 ) );
  hb_storl( par8, 8 );
}


/*
static int getInt ( QWidget * parent, const QString & title, const QString & label, int value = 0, int minValue = -2147483647, int maxValue = 2147483647, int step = 1, bool * ok = 0, Qt::WindowFlags flags = 0)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETINT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  bool par8;
  int par9 = ISNIL(9)? (int) 0 : hb_parni(9);
  hb_retni( QInputDialog::getInt ( par1, par2, par3, (int) ISNIL(4)? 0 : hb_parni(4), (int) ISNIL(5)? -2147483647 : hb_parni(5), (int) ISNIL(6)? 2147483647 : hb_parni(6), (int) ISNIL(7)? 1 : hb_parni(7), &par8,  (Qt::WindowFlags) par9 ) );
  hb_storl( par8, 8 );
}


/*
static QString getItem ( QWidget * parent, const QString & title, const QString & label, const QStringList & items, int current = 0, bool editable = true, bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETITEM )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
QStringList par4;
PHB_ITEM aStrings4 = hb_param(4, HB_IT_ARRAY);
int i4;
int nLen4 = hb_arrayLen(aStrings4);
for (i4=0;i4<nLen4;i4++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings4, i4+1) );
par4 << temp;
}
  bool par7;
  int par8 = ISNIL(8)? (int) 0 : hb_parni(8);
  int par9 = ISNIL(9)? (int) Qt::ImhNone : hb_parni(9);
  hb_retc( (const char *) QInputDialog::getItem ( par1, par2, par3, par4, (int) ISNIL(5)? 0 : hb_parni(5), (bool) ISNIL(6)? true : hb_parl(6), &par7,  (Qt::WindowFlags) par8,  (Qt::InputMethodHints) par9 ).toLatin1().data() );
  hb_storl( par7, 7 );
}


/*
static QString getText ( QWidget * parent, const QString & title, const QString & label, QLineEdit::EchoMode echo = QLineEdit::Normal, const QString & text = QString(), bool * ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETTEXT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  int par4 = ISNIL(4)? (int) QLineEdit::Normal : hb_parni(4);
  QString par5 = ISNIL(5)? QString() : QLatin1String( hb_parc(5) );
  bool par6;
  int par7 = ISNIL(7)? (int) 0 : hb_parni(7);
  int par8 = ISNIL(8)? (int) Qt::ImhNone : hb_parni(8);
  hb_retc( (const char *) QInputDialog::getText ( par1, par2, par3,  (QLineEdit::EchoMode) par4, par5, &par6,  (Qt::WindowFlags) par7,  (Qt::InputMethodHints) par8 ).toLatin1().data() );
  hb_storl( par6, 6 );
}


/*
static QString getMultiLineText(QWidget *parent, const QString &title, const QString &label, const QString &text = QString(), bool *ok = 0, Qt::WindowFlags flags = 0, Qt::InputMethodHints inputMethodHints = Qt::ImhNone)
*/
HB_FUNC_STATIC( QINPUTDIALOG_GETMULTILINETEXT )
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QString par3 = QLatin1String( hb_parc(3) );
  QString par4 = ISNIL(4)? QString() : QLatin1String( hb_parc(4) );
  bool par5;
  int par6 = ISNIL(6)? (int) 0 : hb_parni(6);
  int par7 = ISNIL(7)? (int) Qt::ImhNone : hb_parni(7);
  hb_retc( (const char *) QInputDialog::getMultiLineText ( par1, par2, par3, par4, &par5,  (Qt::WindowFlags) par6,  (Qt::InputMethodHints) par7 ).toLatin1().data() );
  hb_storl( par5, 5 );
}





#pragma ENDDUMP
