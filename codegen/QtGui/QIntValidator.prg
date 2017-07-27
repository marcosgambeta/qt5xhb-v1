$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QIntValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD fixup
   METHOD locale
   METHOD setBottom
   METHOD setLocale
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   METHOD onChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QIntValidator(QObject * parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QIntValidator(int minimum, int maximum, QObject * parent = 0)
*/
$internalConstructor=|new2|int,int,QObject *=0

//[1]QIntValidator(QObject * parent = 0)
//[2]QIntValidator(int minimum, int maximum, QObject * parent = 0)

HB_FUNC_STATIC( QINTVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QIntValidator_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTQOBJECT(3) )
  {
    QIntValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int bottom() const
*/
$method=|int|bottom|

/*
virtual void fixup(QString & input) const
*/
$method=|void|fixup|QString &

/*
QLocale locale() const
*/
$method=|QLocale|locale|

/*
void setBottom(int)
*/
$method=|void|setBottom|int

/*
void setLocale(const QLocale & locale)
*/
$method=|void|setLocale|const QLocale &

/*
virtual void setRange(int bottom, int top)
*/
$method=|void|setRange|int,int

/*
void setTop(int)
*/
$method=|void|setTop|int

/*
int top() const
*/
$method=|int|top|

/*
virtual State validate(QString & input, int & pos) const = 0
*/
$method=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
