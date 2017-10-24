/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAccessibleTableModelChangeEvent INHERIT QAccessibleEvent

   METHOD new
   METHOD delete
   METHOD setModelChangeType
   METHOD modelChangeType
   METHOD setFirstRow
   METHOD setFirstColumn
   METHOD setLastRow
   METHOD setLastColumn
   METHOD firstRow
   METHOD firstColumn
   METHOD lastRow
   METHOD lastColumn

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleTableModelChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleTableModelChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTableModelChangeEvent>
#endif

/*
QAccessibleTableModelChangeEvent(QObject *obj, ModelChangeType changeType)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_NEW )
{
  QAccessibleTableModelChangeEvent * o = new QAccessibleTableModelChangeEvent ( PQOBJECT(1), (QAccessibleTableModelChangeEvent::ModelChangeType) hb_parni(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_DELETE )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setModelChangeType(ModelChangeType changeType)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_SETMODELCHANGETYPE )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setModelChangeType ( (QAccessibleTableModelChangeEvent::ModelChangeType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
ModelChangeType modelChangeType() const
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_MODELCHANGETYPE )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->modelChangeType () );
  }
}


/*
void setFirstRow(int row)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_SETFIRSTROW )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFirstRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFirstColumn(int col)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_SETFIRSTCOLUMN )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFirstColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastRow(int row)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_SETLASTROW )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLastRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLastColumn(int col)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_SETLASTCOLUMN )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLastColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int firstRow() const
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_FIRSTROW )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->firstRow () );
  }
}


/*
int firstColumn() const
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_FIRSTCOLUMN )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->firstColumn () );
  }
}


/*
int lastRow() const
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_LASTROW )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lastRow () );
  }
}


/*
int lastColumn() const
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_LASTCOLUMN )
{
  QAccessibleTableModelChangeEvent * obj = (QAccessibleTableModelChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->lastColumn () );
  }
}



#pragma ENDDUMP
