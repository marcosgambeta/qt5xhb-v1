/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

CLASS QTextTableFormat INHERIT QTextFrameFormat

   DATA class_id INIT Class_Id_QTextTableFormat
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD columns
   METHOD setColumns
   METHOD setColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD clearColumnWidthConstraints
   METHOD cellSpacing
   METHOD setCellSpacing
   METHOD cellPadding
   METHOD setCellPadding
   METHOD setAlignment
   METHOD alignment
   METHOD setHeaderRowCount
   METHOD headerRowCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTableFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextTableFormat>
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
#include <QTextTableFormat>
#endif

/*
QTextTableFormat()
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_NEW )
{
  QTextTableFormat * o = new QTextTableFormat (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextTableFormat *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTEXTTABLEFORMAT_DELETE )
{
  QTextTableFormat * obj = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_ISVALID )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
int columns() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_COLUMNS )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columns (  ) );
  }
}


/*
void setColumns(int columns)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCOLUMNS )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setColumns ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnWidthConstraints(const QVector<QTextLength> &constraints)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCOLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QVector<QTextLength> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QTextLength *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
    obj->setColumnWidthConstraints ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector<QTextLength> columnWidthConstraints() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_COLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVector<QTextLength> list = obj->columnWidthConstraints (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTEXTLENGTH" );
    #else
    pDynSym = hb_dynsymFindName( "QTEXTLENGTH" );
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
        hb_itemPutPtr( pItem, (QTextLength *) new QTextLength ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void clearColumnWidthConstraints()
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CLEARCOLUMNWIDTHCONSTRAINTS )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearColumnWidthConstraints (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal cellSpacing() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CELLSPACING )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->cellSpacing (  ) );
  }
}


/*
void setCellSpacing(qreal spacing)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCELLSPACING )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCellSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal cellPadding() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_CELLPADDING )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->cellPadding (  ) );
  }
}


/*
void setCellPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETCELLPADDING )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setCellPadding ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment(Qt::Alignment alignment)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETALIGNMENT )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::Alignment alignment() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_ALIGNMENT )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->alignment (  ) );
  }
}


/*
void setHeaderRowCount(int count)
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_SETHEADERROWCOUNT )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeaderRowCount ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int headerRowCount() const
*/
HB_FUNC_STATIC( QTEXTTABLEFORMAT_HEADERROWCOUNT )
{
  QTextTableFormat * obj = (QTextTableFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->headerRowCount (  ) );
  }
}



#pragma ENDDUMP
