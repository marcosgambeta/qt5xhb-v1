$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGULAREXPRESSION
#endif

CLASS QRegularExpressionValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD regularExpression
   METHOD setRegularExpression

   METHOD onRegularExpressionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRegularExpressionValidator(QObject *parent = 0)
*/
$internalConstructor=|new1|QObject *=0

/*
QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)
*/
$internalConstructor=|new2|const QRegularExpression &,QObject *=0

//[1]QRegularExpressionValidator(QObject *parent = 0)
//[2]QRegularExpressionValidator(const QRegularExpression &re, QObject *parent = 0)

HB_FUNC_STATIC( QREGULAREXPRESSIONVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QRegularExpressionValidator_new1();
  }
  else if( ISBETWEEN(1,2) && ISQREGULAREXPRESSION(1) && ISOPTQOBJECT(2) )
  {
    QRegularExpressionValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRegularExpression regularExpression() const
*/
$method=|QRegularExpression|regularExpression|

/*
void setRegularExpression(const QRegularExpression &re)
*/
$method=|void|setRegularExpression|const QRegularExpression &

#pragma ENDDUMP
