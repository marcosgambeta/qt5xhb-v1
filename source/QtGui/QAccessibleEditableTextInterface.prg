/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAccessibleEditableTextInterface

   DATA pointer
   DATA class_id INIT Class_Id_QAccessibleEditableTextInterface
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD deleteText
   METHOD insertText
   METHOD replaceText
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleEditableTextInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleEditableTextInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleEditableTextInterface>
#endif


HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_DELETE )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void deleteText(int startOffset, int endOffset) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_DELETETEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deleteText ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void insertText(int offset, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_INSERTTEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    obj->insertText ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void replaceText(int startOffset, int endOffset, const QString &text) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_REPLACETEXT )
{
  QAccessibleEditableTextInterface * obj = (QAccessibleEditableTextInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par3 = QLatin1String( hb_parc(3) );
    obj->replaceText ( (int) hb_parni(1), (int) hb_parni(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_NEWFROM )
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

HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QACCESSIBLEEDITABLETEXTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QACCESSIBLEEDITABLETEXTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QACCESSIBLEEDITABLETEXTINTERFACE_SETSELFDESTRUCTION )
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