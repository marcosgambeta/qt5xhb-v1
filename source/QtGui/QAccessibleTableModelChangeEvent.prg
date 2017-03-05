/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAccessibleTableModelChangeEvent INHERIT QAccessibleEvent

   DATA class_id INIT Class_Id_QAccessibleTableModelChangeEvent
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleTableModelChangeEvent>
#endif

/*
QAccessibleTableModelChangeEvent(QObject *obj, ModelChangeType changeType)
*/
HB_FUNC_STATIC( QACCESSIBLETABLEMODELCHANGEEVENT_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  QAccessibleTableModelChangeEvent * o = new QAccessibleTableModelChangeEvent ( par1,  (QAccessibleTableModelChangeEvent::ModelChangeType) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAccessibleTableModelChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    int par1 = hb_parni(1);
    obj->setModelChangeType (  (QAccessibleTableModelChangeEvent::ModelChangeType) par1 );
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
    hb_retni( obj->modelChangeType (  ) );
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
    obj->setFirstRow ( (int) hb_parni(1) );
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
    obj->setFirstColumn ( (int) hb_parni(1) );
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
    obj->setLastRow ( (int) hb_parni(1) );
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
    obj->setLastColumn ( (int) hb_parni(1) );
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
    hb_retni( obj->firstRow (  ) );
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
    hb_retni( obj->firstColumn (  ) );
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
    hb_retni( obj->lastRow (  ) );
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
    hb_retni( obj->lastColumn (  ) );
  }
}



#pragma ENDDUMP
