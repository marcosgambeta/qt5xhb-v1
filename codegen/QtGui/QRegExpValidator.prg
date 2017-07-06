$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QREGEXP
#endif

CLASS QRegExpValidator INHERIT QValidator

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD regExp
   METHOD setRegExp
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRegExpValidator ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW1 )
{
  QRegExpValidator * o = new QRegExpValidator ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QRegExpValidator ( const QRegExp & rx, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW2 )
{
  QRegExpValidator * o = new QRegExpValidator ( *PQREGEXP(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QRegExpValidator ( QObject * parent = 0 )
//[2]QRegExpValidator ( const QRegExp & rx, QObject * parent )

HB_FUNC_STATIC( QREGEXPVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QREGEXPVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQREGEXP(1) && ISQOBJECT(2) )
  {
    HB_FUNC_EXEC( QREGEXPVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QRegExp & regExp () const
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_REGEXP )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->regExp () );
    _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}


/*
void setRegExp ( const QRegExp & rx )
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_SETREGEXP )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRegExp ( *PQREGEXP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QREGEXPVALIDATOR_VALIDATE )
{
  QRegExpValidator * obj = (QRegExpValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}



#pragma ENDDUMP
