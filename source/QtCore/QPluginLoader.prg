/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload
   METHOD staticInstances

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPluginLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPluginLoader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPluginLoader>
#endif

/*
QPluginLoader ( QObject * parent = 0 )
*/
void QPluginLoader_new1 ()
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QPluginLoader * o = new QPluginLoader ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
void QPluginLoader_new2 ()
{
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QPluginLoader * o = new QPluginLoader ( PQSTRING(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPLUGINLOADER_DELETE )
{
  QPluginLoader * obj = (QPluginLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ERRORSTRING )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->errorString ().toLatin1().data() );
  }
}

/*
QString fileName () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_FILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( (const char *) obj->fileName ().toLatin1().data() );
  }
}

/*
QObject * instance ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_INSTANCE )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->instance ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
bool isLoaded () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_ISLOADED )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isLoaded () );
  }
}

/*
bool load ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOAD )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->load () );
  }
}

/*
QLibrary::LoadHints loadHints () const
*/
HB_FUNC_STATIC( QPLUGINLOADER_LOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->loadHints () );
  }
}

/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETFILENAME )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setFileName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
HB_FUNC_STATIC( QPLUGINLOADER_SETLOADHINTS )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setLoadHints (  (QLibrary::LoadHints) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool unload ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_UNLOAD )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->unload () );
  }
}

/*
QObjectList staticInstances ()
*/
HB_FUNC_STATIC( QPLUGINLOADER_STATICINSTANCES )
{
  QPluginLoader * obj = (QPluginLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObjectList list = obj->staticInstances ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QOBJECT" );
    #else
    pDynSym = hb_dynsymFindName( "QOBJECT" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QObject *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
