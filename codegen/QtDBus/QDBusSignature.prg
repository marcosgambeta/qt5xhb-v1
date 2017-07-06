$header

#include "hbclass.ch"

CLASS QDBusSignature

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD signature
   METHOD setSignature

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
QDBusSignature()
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW1 )
{
  QDBusSignature * o = new QDBusSignature ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(const char *signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW2 )
{
  QDBusSignature * o = new QDBusSignature ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(QLatin1String signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW3 )
{
  QLatin1String * par1 = (QLatin1String *) _qt5xhb_itemGetPtr(1);
  QDBusSignature * o = new QDBusSignature ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QDBusSignature(const QString &signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_NEW4 )
{
  QDBusSignature * o = new QDBusSignature ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QDBusSignature()
//[2]explicit QDBusSignature(const char *signature)
//[3]explicit QDBusSignature(QLatin1String signature)
//[4]explicit QDBusSignature(const QString &signature)

// TODO: resolver conflitos entre [2], [3] e [4]

HB_FUNC( QDBUSSIGNATURE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString signature() const
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_SIGNATURE )
{
  QDBusSignature * obj = (QDBusSignature *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->signature () );
  }
}

/*
void setSignature(const QString &signature)
*/
HB_FUNC_STATIC( QDBUSSIGNATURE_SETSIGNATURE )
{
  QDBusSignature * obj = (QDBusSignature *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSignature ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



$extraMethods

#pragma ENDDUMP
