/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinJumpListItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD setType
   METHOD filePath
   METHOD setFilePath
   METHOD workingDirectory
   METHOD setWorkingDirectory
   METHOD icon
   METHOD setIcon
   METHOD title
   METHOD setTitle
   METHOD description
   METHOD setDescription
   METHOD arguments
   METHOD setArguments

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinJumpListItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpListItem>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpListItem>
#endif
#endif

/*
explicit QWinJumpListItem(Type type)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  int par1 = hb_parni(1);
  QWinJumpListItem * o = new QWinJumpListItem ( (QWinJumpListItem::Type) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINJUMPLISTITEM_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Type type() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}

/*
void setType(Type type)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setType ( (QWinJumpListItem::Type) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString filePath() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_FILEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->filePath () ) );
  }
#endif
}

/*
void setFilePath(const QString &filePath)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETFILEPATH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFilePath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString workingDirectory() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_WORKINGDIRECTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->workingDirectory () ) );
  }
#endif
}

/*
void setWorkingDirectory(const QString &workingDirectory)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETWORKINGDIRECTORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWorkingDirectory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->title () ) );
  }
#endif
}

/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString description() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->description () ) );
  }
#endif
}

/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDescription ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList arguments() const
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_ARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->arguments ();
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}

/*
void setArguments(const QStringList &arguments)
*/
HB_FUNC_STATIC( QWINJUMPLISTITEM_SETARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListItem * obj = (QWinJumpListItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setArguments ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QWINJUMPLISTITEM_NEWFROM )
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

HB_FUNC_STATIC( QWINJUMPLISTITEM_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QWINJUMPLISTITEM_NEWFROM );
}

HB_FUNC_STATIC( QWINJUMPLISTITEM_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QWINJUMPLISTITEM_NEWFROM );
}

HB_FUNC_STATIC( QWINJUMPLISTITEM_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QWINJUMPLISTITEM_SETSELFDESTRUCTION )
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
