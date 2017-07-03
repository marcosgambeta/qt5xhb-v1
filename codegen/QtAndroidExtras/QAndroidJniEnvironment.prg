$header

#include "hbclass.ch"

CLASS QAndroidJniEnvironment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD javaVM

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAndroidJniEnvironment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

$includes=5,2,0

/*
QAndroidJniEnvironment()
*/
HB_FUNC_STATIC( QANDROIDJNIENVIRONMENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(0) )
  {
    QAndroidJniEnvironment * o = new QAndroidJniEnvironment ();
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,2,0

/*
static JavaVM *javaVM()
*/
HB_FUNC_STATIC( QANDROIDJNIENVIRONMENT_JAVAVM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retptr( (JavaVM *) QAndroidJniEnvironment::javaVM () );
#endif
}

$extraMethods

#pragma ENDDUMP
