/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

HB_FUNC_STATIC( QANDROIDJNIOBJECT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

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
HB_FUNC_STATIC( QANDROIDJNIOBJECT_TOSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
bool isValid() const
*/
HB_FUNC_STATIC( QANDROIDJNIOBJECT_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QAndroidJniObject * obj = (QAndroidJniObject *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isValid () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

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
HB_FUNC_STATIC( QANDROIDJNIOBJECT_ISCLASSAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    RBOOL( QAndroidJniObject::isClassAvailable ( PCONSTCHAR(1) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QANDROIDJNIOBJECT_NEWFROM );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QANDROIDJNIOBJECT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
