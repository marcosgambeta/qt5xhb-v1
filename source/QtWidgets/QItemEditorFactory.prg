/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorFactory

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD valuePropertyName
   METHOD registerEditor
   METHOD defaultFactory
   METHOD setDefaultFactory

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemEditorFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QItemEditorFactory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QItemEditorFactory>
#endif

/*
QItemEditorFactory()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_NEW )
{
  QItemEditorFactory * o = new QItemEditorFactory ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QITEMEDITORFACTORY_DELETE )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QWidget *createEditor(int userType, QWidget *parent) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_CREATEEDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    QWidget * ptr = obj->createEditor ( PINT(1), par2 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QByteArray valuePropertyName(int userType) const
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_VALUEPROPERTYNAME )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valuePropertyName ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void registerEditor(int userType, QItemEditorCreatorBase *creator)
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_REGISTEREDITOR )
{
  QItemEditorFactory * obj = (QItemEditorFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QItemEditorCreatorBase * par2 = (QItemEditorCreatorBase *) _qt5xhb_itemGetPtr(2);
    obj->registerEditor ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static const QItemEditorFactory *defaultFactory()
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_DEFAULTFACTORY )
{
  const QItemEditorFactory * ptr = QItemEditorFactory::defaultFactory ();
  _qt5xhb_createReturnClass ( ptr, "QITEMEDITORFACTORY" );
}


/*
static void setDefaultFactory(QItemEditorFactory *factory)
*/
HB_FUNC_STATIC( QITEMEDITORFACTORY_SETDEFAULTFACTORY )
{
  QItemEditorFactory * par1 = (QItemEditorFactory *) _qt5xhb_itemGetPtr(1);
  QItemEditorFactory::setDefaultFactory ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QITEMEDITORFACTORY_NEWFROM )
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

HB_FUNC_STATIC( QITEMEDITORFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QITEMEDITORFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QITEMEDITORFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QITEMEDITORFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QITEMEDITORFACTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QITEMEDITORFACTORY_SETSELFDESTRUCTION )
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