$header

#include "hbclass.ch"

CLASS QTextLength

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD type
   METHOD value
   METHOD rawValue

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextLength()
*/
HB_FUNC_STATIC( QTEXTLENGTH_NEW1 )
{
  QTextLength * o = new QTextLength ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextLength(Type type, qreal value)
*/
HB_FUNC_STATIC( QTEXTLENGTH_NEW2 )
{
  QTextLength * o = new QTextLength ( (QTextLength::Type) hb_parni(1), PQREAL(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextLength()
//[2]QTextLength(Type type, qreal value)

HB_FUNC_STATIC( QTEXTLENGTH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTLENGTH_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTLENGTH_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Type type() const
*/
HB_FUNC_STATIC( QTEXTLENGTH_TYPE )
{
  QTextLength * obj = (QTextLength *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}


/*
qreal value(qreal maximumLength) const
*/
HB_FUNC_STATIC( QTEXTLENGTH_VALUE )
{
  QTextLength * obj = (QTextLength *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->value ( PQREAL(1) ) );
  }
}


/*
qreal rawValue() const
*/
HB_FUNC_STATIC( QTEXTLENGTH_RAWVALUE )
{
  QTextLength * obj = (QTextLength *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rawValue () );
  }
}

$extraMethods

#pragma ENDDUMP
