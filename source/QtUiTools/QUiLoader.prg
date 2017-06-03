/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
REQUEST QDIR
#endif

CLASS QUiLoader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addPluginPath
   METHOD availableLayouts
   METHOD availableWidgets
   METHOD clearPluginPaths
   METHOD createAction
   METHOD createActionGroup
   METHOD createLayout
   METHOD createWidget
   METHOD isLanguageChangeEnabled
   METHOD load
   METHOD pluginPaths
   METHOD setLanguageChangeEnabled
   METHOD setWorkingDirectory
   METHOD workingDirectory

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QUiLoader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QUiLoader>
#endif

#include <QStringList>
#include <QDir>

/*
QUiLoader ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QUILOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QUiLoader * o = new QUiLoader ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUILOADER_DELETE )
{
  QUiLoader * obj = (QUiLoader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addPluginPath ( const QString & path )
*/
HB_FUNC_STATIC( QUILOADER_ADDPLUGINPATH )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->addPluginPath ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QStringList availableLayouts () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLELAYOUTS )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->availableLayouts ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
QStringList availableWidgets () const
*/
HB_FUNC_STATIC( QUILOADER_AVAILABLEWIDGETS )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->availableWidgets ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void clearPluginPaths ()
*/
HB_FUNC_STATIC( QUILOADER_CLEARPLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearPluginPaths ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QAction * createAction ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTION )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) && ISOPTCHAR(2) )
    {
      QAction * ptr = obj->createAction ( OPQOBJECT(1,0), OPQSTRING(2,QString()) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QActionGroup * createActionGroup ( QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEACTIONGROUP )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTQOBJECT(1) && ISOPTCHAR(2) )
    {
      QActionGroup * ptr = obj->createActionGroup ( OPQOBJECT(1,0), OPQSTRING(2,QString()) );
      _qt5xhb_createReturnClass ( ptr, "QACTIONGROUP" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QLayout * createLayout ( const QString & className, QObject * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATELAYOUT )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTQOBJECT(2) && ISOPTCHAR(3) )
    {
      QLayout * ptr = obj->createLayout ( PQSTRING(1), OPQOBJECT(2,0), OPQSTRING(3,QString()) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QWidget * createWidget ( const QString & className, QWidget * parent = 0, const QString & name = QString() )
*/
HB_FUNC_STATIC( QUILOADER_CREATEWIDGET )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTQWIDGET(2) && ISOPTCHAR(3) )
    {
      QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
      QWidget * ptr = obj->createWidget ( PQSTRING(1), par2, OPQSTRING(3,QString()) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isLanguageChangeEnabled () const
*/
HB_FUNC_STATIC( QUILOADER_ISLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isLanguageChangeEnabled () );
  }
}

/*
QWidget * load ( QIODevice * device, QWidget * parentWidget = 0 )
*/
HB_FUNC_STATIC( QUILOADER_LOAD )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIODEVICE(1) && ISOPTQWIDGET(2) )
    {
      QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
      QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
      QWidget * ptr = obj->load ( par1, par2 );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList pluginPaths () const
*/
HB_FUNC_STATIC( QUILOADER_PLUGINPATHS )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringList strl = obj->pluginPaths ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}

/*
void setLanguageChangeEnabled ( bool enabled )
*/
HB_FUNC_STATIC( QUILOADER_SETLANGUAGECHANGEENABLED )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setLanguageChangeEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWorkingDirectory ( const QDir & dir )
*/
HB_FUNC_STATIC( QUILOADER_SETWORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDIR(1) )
    {
      QDir * par1 = (QDir *) _qt5xhb_itemGetPtr(1);
      obj->setWorkingDirectory ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDir workingDirectory () const
*/
HB_FUNC_STATIC( QUILOADER_WORKINGDIRECTORY )
{
  QUiLoader * obj = (QUiLoader *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QDir * ptr = new QDir( obj->workingDirectory () );
    _qt5xhb_createReturnClass ( ptr, "QDIR", true );
  }
}

#pragma ENDDUMP
