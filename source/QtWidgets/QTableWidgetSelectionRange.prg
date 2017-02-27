/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QTableWidgetSelectionRange

   DATA pointer
   DATA class_id INIT Class_Id_QTableWidgetSelectionRange
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD bottomRow
   METHOD columnCount
   METHOD leftColumn
   METHOD rightColumn
   METHOD rowCount
   METHOD topRow
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableWidgetSelectionRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTableWidgetSelectionRange>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTableWidgetSelectionRange>
#endif
#endif

/*
QTableWidgetSelectionRange()
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange (  );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QTableWidgetSelectionRange(int top, int left, int bottom, int right)
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( par1, par2, par3, par4 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTableWidgetSelectionRange * par1 = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtr(1);
  QTableWidgetSelectionRange * o = new QTableWidgetSelectionRange ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QTableWidgetSelectionRange()
//[2]QTableWidgetSelectionRange(int top, int left, int bottom, int right)
//[3]QTableWidgetSelectionRange(const QTableWidgetSelectionRange & other)

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTABLEWIDGETSELECTIONRANGE(1) )
  {
    HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottomRow() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_BOTTOMROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bottomRow (  ) );
  }
}


/*
int columnCount() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_COLUMNCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnCount (  ) );
  }
}


/*
int leftColumn() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_LEFTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->leftColumn (  ) );
  }
}


/*
int rightColumn() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_RIGHTCOLUMN )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rightColumn (  ) );
  }
}


/*
int rowCount() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_ROWCOUNT )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
int topRow() const
*/
HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_TOPROW )
{
  QTableWidgetSelectionRange * obj = (QTableWidgetSelectionRange *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->topRow (  ) );
  }
}



HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEWFROM )
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

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTABLEWIDGETSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTABLEWIDGETSELECTIONRANGE_SETSELFDESTRUCTION )
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