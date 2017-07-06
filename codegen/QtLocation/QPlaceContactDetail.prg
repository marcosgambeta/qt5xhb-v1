$header

#include "hbclass.ch"

CLASS QPlaceContactDetail

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD label
   METHOD setLabel
   METHOD value
   METHOD setValue
   METHOD clear

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
QPlaceContactDetail()
*/
void QPlaceContactDetail_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * o = new QPlaceContactDetail ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceContactDetail(const QPlaceContactDetail &other)
*/
void QPlaceContactDetail_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * o = new QPlaceContactDetail ( *PQPLACECONTACTDETAIL(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceContactDetail()
//[2]QPlaceContactDetail(const QPlaceContactDetail &other)

HB_FUNC_STATIC( QPLACECONTACTDETAIL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContactDetail_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTACTDETAIL(1) )
  {
    QPlaceContactDetail_new2();
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
HB_FUNC_STATIC( QPLACECONTACTDETAIL_LABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->label () );
  }
#endif
}

/*
void setLabel(const QString &label)
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_SETLABEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLabel ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString value() const
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->value () );
  }
#endif
}

/*
void setValue(const QString &value)
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QPLACECONTACTDETAIL_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContactDetail * obj = (QPlaceContactDetail *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
