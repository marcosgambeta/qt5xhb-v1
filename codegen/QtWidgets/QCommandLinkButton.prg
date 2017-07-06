$header

#include "hbclass.ch"

CLASS QCommandLinkButton INHERIT QPushButton

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD description
   METHOD setDescription
   METHOD isFlat
   METHOD setFlat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCommandLinkButton ( QWidget * parent = 0 )
*/
void QCommandLinkButton_new1 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
*/
void QCommandLinkButton_new2 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )
*/
void QCommandLinkButton_new3 ()
{
  QCommandLinkButton * o = new QCommandLinkButton ( PQSTRING(1), PQSTRING(2), OPQWIDGET(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QCommandLinkButton ( QWidget * parent = 0 )
//[2]QCommandLinkButton ( const QString & text, QWidget * parent = 0 )
//[3]QCommandLinkButton ( const QString & text, const QString & description, QWidget * parent = 0 )

HB_FUNC_STATIC( QCOMMANDLINKBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCommandLinkButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCommandLinkButton_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QCommandLinkButton_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString description () const
*/
$method=|QString|description|

/*
void setDescription ( const QString & description )
*/
$method=|void|setDescription|const QString &

/*
bool isFlat () const
*/
$method=|bool|isFlat|

/*
void setFlat ( bool )
*/
$method=|void|setFlat|bool

#pragma ENDDUMP
