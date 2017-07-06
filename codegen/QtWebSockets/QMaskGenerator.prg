$header

#include "hbclass.ch"

CLASS QMaskGenerator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD seed
   METHOD nextMask

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,3,0

$deleteMethod=5,3,0

/*
virtual bool seed() = 0
*/
HB_FUNC_STATIC( QMASKGENERATOR_SEED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QMaskGenerator * obj = (QMaskGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->seed () );
  }
#endif
}


/*
virtual quint32 nextMask() = 0
*/
HB_FUNC_STATIC( QMASKGENERATOR_NEXTMASK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QMaskGenerator * obj = (QMaskGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQUINT32( obj->nextMask () );
  }
#endif
}



#pragma ENDDUMP
