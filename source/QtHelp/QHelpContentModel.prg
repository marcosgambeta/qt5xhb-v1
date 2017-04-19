/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTITEM
REQUEST QVARIANT
REQUEST QMODELINDEX
#endif

CLASS QHelpContentModel INHERIT QAbstractItemModel

   DATA class_id INIT Class_Id_QHelpContentModel
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD contentItemAt
   METHOD createContents
   METHOD isCreatingContents
   METHOD columnCount
   METHOD data
   METHOD index
   METHOD parent
   METHOD rowCount

   METHOD onContentsCreated
   METHOD onContentsCreationStarted

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpContentModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpContentModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpContentModel>
#endif

HB_FUNC_STATIC( QHELPCONTENTMODEL_DELETE )
{
  QHelpContentModel * obj = (QHelpContentModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QHelpContentItem * contentItemAt ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CONTENTITEMAT )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QHelpContentItem * ptr = obj->contentItemAt ( *par1 );
    _qt5xhb_createReturnClass ( ptr, "QHELPCONTENTITEM" );
  }
}


/*
void createContents ( const QString & customFilterName )
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_CREATECONTENTS )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->createContents ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCreatingContents () const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ISCREATINGCONTENTS )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreatingContents (  ) );
  }
}


/*
virtual int columnCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_COLUMNCOUNT )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->columnCount ( par1 ) );
  }
}


/*
virtual QVariant data ( const QModelIndex & index, int role ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_DATA )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QVariant * ptr = new QVariant( obj->data ( *par1, (int) hb_parni(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_INDEX )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
    QModelIndex * ptr = new QModelIndex( obj->index ( (int) hb_parni(1), (int) hb_parni(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual QModelIndex parent ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_PARENT )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) _qt5xhb_itemGetPtr(1);
    QModelIndex * ptr = new QModelIndex( obj->parent ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual int rowCount ( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QHELPCONTENTMODEL_ROWCOUNT )
{
  QHelpContentModel * obj = (QHelpContentModel *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->rowCount ( par1 ) );
  }
}




#pragma ENDDUMP
