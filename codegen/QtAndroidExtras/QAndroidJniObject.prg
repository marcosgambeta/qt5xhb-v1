$header

#include "hbclass.ch"

CLASS QAndroidJniObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD callObjectMethod1
   METHOD callObjectMethod
   METHOD getObjectField
   METHOD toString
   METHOD isValid
   METHOD callStaticObjectMethod1
   METHOD callStaticObjectMethod
   METHOD getStaticObjectField1
   METHOD getStaticObjectField2
   METHOD getStaticObjectField
   METHOD fromString
   METHOD isClassAvailable

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAndroidJniObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QAndroidJniObject>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QAndroidJniObject>
#endif
#endif

/*
QAndroidJniObject()
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * o = new QAndroidJniObject ();
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QAndroidJniObject(const char *className)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * o = new QAndroidJniObject ( PCONSTCHAR(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

// TODO: revisar e implementar(?) construtores
//[1]QAndroidJniObject()
//[2]QAndroidJniObject(const char *className)
//[3]QAndroidJniObject(const char *className, const char *sig, ...)
//[4]QAndroidJniObject(jclass clazz)
//[5]QAndroidJniObject(jclass clazz, const char *sig, ...)
//[6]QAndroidJniObject(jobject obj)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QAndroidJniObject callObjectMethod(const char *methodName) const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLOBJECTMETHOD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAndroidJniObject * ptr = new QAndroidJniObject( obj->callObjectMethod<const char*> ( PCONSTCHAR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
  }
#endif
}

// TODO: revisar e implementar(?) caso [2]
//[1]QAndroidJniObject callObjectMethod(const char *methodName) const
//[2]QAndroidJniObject callObjectMethod(const char *methodName, const char *sig, ...) const

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLOBJECTMETHOD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_CALLOBJECTMETHOD1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAndroidJniObject getObjectField(const char *fieldName) const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETOBJECTFIELD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      QAndroidJniObject * ptr = new QAndroidJniObject( obj->getObjectField<const char*> ( PCONSTCHAR(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QString toString() const
*/
$method=5,2,0|QString|toString|

/*
bool isValid() const
*/
$method=5,2,0|bool|isValid|

/*
static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::callStaticObjectMethod<const char*> ( PCONSTCHAR(1), PCONSTCHAR(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
#endif
}

// TODO: revisar e implementar(?) metodos
//[1]static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName)
//[2]static QAndroidJniObject callStaticObjectMethod(const char *className, const char *methodName, const char *sig, ...)
//[3]static QAndroidJniObject callStaticObjectMethod(jclass clazz, const char *methodName)
//[4]static QAndroidJniObject callStaticObjectMethod(jclass clazz, const char *methodName, const char *sig, ...)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_CALLSTATICOBJECTMETHOD1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::getStaticObjectField<const char*> ( PCONSTCHAR(1), PCONSTCHAR(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
#endif
}

/*
static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName, const char *sig)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::getStaticObjectField<const char*> ( PCONSTCHAR(1), PCONSTCHAR(2), PCONSTCHAR(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
#endif
}

// TODO: revisar e implementar(?) metodos
//[1]static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName)
//[2]static QAndroidJniObject getStaticObjectField(const char *className, const char *fieldName, const char *sig)
//[3]static QAndroidJniObject getStaticObjectField(jclass clazz, const char *fieldName)
//[4]static QAndroidJniObject getStaticObjectField(jclass clazz, const char *fieldName, const char *sig)

HB_FUNC_STATIC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD1 );
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    HB_FUNC_EXEC( QANDROIDJNIOBJECT_GETSTATICOBJECTFIELD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QAndroidJniObject fromString(const QString &string)
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_FROMSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISCHAR(1) )
  {
    QAndroidJniObject * ptr = new QAndroidJniObject( QAndroidJniObject::fromString ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QANDROIDJNIOBJECT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static bool isClassAvailable(const char *className)
*/
$staticMethod=5,2,0|bool|isClassAvailable|const char *

$extraMethods

#pragma ENDDUMP
