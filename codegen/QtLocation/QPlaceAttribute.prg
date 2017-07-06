$header

#include "hbclass.ch"

CLASS QPlaceAttribute

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD text
   METHOD setText
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceAttribute()
*/
void QPlaceAttribute_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * o = new QPlaceAttribute ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceAttribute(const QPlaceAttribute &other)
*/
void QPlaceAttribute_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * o = new QPlaceAttribute ( *PQPLACEATTRIBUTE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceAttribute()
//[2]QPlaceAttribute(const QPlaceAttribute &other)

HB_FUNC_STATIC( QPLACEATTRIBUTE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceAttribute_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACEATTRIBUTE(1) )
  {
    QPlaceAttribute_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QString label() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->label () );
  }
#endif
}

/*
void setLabel(const QString &label)
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString text() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
#endif
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACEATTRIBUTE_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceAttribute * obj = (QPlaceAttribute *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}

$extraMethods

#pragma ENDDUMP
