/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QFormLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QFormLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addRow1
   METHOD addRow2
   METHOD addRow3
   METHOD addRow4
   METHOD addRow5
   METHOD addRow6
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD horizontalSpacing
   METHOD insertRow1
   METHOD insertRow2
   METHOD insertRow3
   METHOD insertRow4
   METHOD insertRow5
   METHOD insertRow6
   METHOD insertRow
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD labelAlignment
   METHOD labelForField1
   METHOD labelForField2
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFormLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFormLayout>
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
#include <QFormLayout>
#endif

/*
QFormLayout ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFORMLAYOUT_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QFormLayout * o = new QFormLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFORMLAYOUT_DELETE )
{
  QFormLayout * obj = (QFormLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addRow ( QWidget * label, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW1 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * label, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW2 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QLayout * par2 = (QLayout *) _qt5xhb_itemGetPtr(2);
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW3 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW4 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QLayout * par2 = (QLayout *) _qt5xhb_itemGetPtr(2);
    obj->addRow ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW5 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->addRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDROW6 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    obj->addRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void addRow ( QWidget * label, QWidget * field )
//[2]void addRow ( QWidget * label, QLayout * field )
//[3]void addRow ( const QString & labelText, QWidget * field )
//[4]void addRow ( const QString & labelText, QLayout * field )
//[5]void addRow ( QWidget * widget )
//[6]void addRow ( QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW1 );
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW2 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW4 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW5 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ADDROW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
FieldGrowthPolicy fieldGrowthPolicy () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fieldGrowthPolicy (  ) );
  }
}


/*
Qt::Alignment formAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->formAlignment (  ) );
  }
}





/*
int horizontalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->horizontalSpacing (  ) );
  }
}


/*
void insertRow ( int row, QWidget * label, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW1 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->insertRow ( (int) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * label, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW2 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    QLayout * par3 = (QLayout *) _qt5xhb_itemGetPtr(3);
    obj->insertRow ( (int) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QWidget * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW3 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->insertRow ( (int) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QLayout * field )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW4 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par2 = QLatin1String( hb_parc(2) );
    QLayout * par3 = (QLayout *) _qt5xhb_itemGetPtr(3);
    obj->insertRow ( (int) hb_parni(1), par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW5 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    obj->insertRow ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW6 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par2 = (QLayout *) _qt5xhb_itemGetPtr(2);
    obj->insertRow ( (int) hb_parni(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void insertRow ( int row, QWidget * label, QWidget * field )
//[2]void insertRow ( int row, QWidget * label, QLayout * field )
//[3]void insertRow ( int row, const QString & labelText, QWidget * field )
//[4]void insertRow ( int row, const QString & labelText, QLayout * field )
//[5]void insertRow ( int row, QWidget * widget )
//[6]void insertRow ( int row, QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW2 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQWIDGET(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQLAYOUT(3) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW4 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQWIDGET(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW5 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQLAYOUT(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_INSERTROW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLayoutItem * itemAt ( int row, ItemRole role ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT1 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1),  (QFormLayout::ItemRole) par2 );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT2 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}


//[1]QLayoutItem * itemAt ( int row, ItemRole role ) const
//[2]virtual QLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ITEMAT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment labelAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->labelAlignment (  ) );
  }
}


/*
QWidget * labelForField ( QWidget * field ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD1 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->labelForField ( par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * labelForField ( QLayout * field ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD2 )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->labelForField ( par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


//[1]QWidget * labelForField ( QWidget * field ) const
//[2]QWidget * labelForField ( QLayout * field ) const

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD1 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QFORMLAYOUT_LABELFORFIELD2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int rowCount () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWCOUNT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowCount (  ) );
  }
}


/*
RowWrapPolicy rowWrapPolicy () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowWrapPolicy (  ) );
  }
}


/*
void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFieldGrowthPolicy (  (QFormLayout::FieldGrowthPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFormAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETHORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHorizontalSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItem ( int row, ItemRole role, QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETITEM )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QLayout * par3 = (QLayout *) _qt5xhb_itemGetPtr(3);
    obj->setItem ( (int) hb_parni(1),  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLabelAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLabelAlignment (  (Qt::Alignment) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLayout ( int row, ItemRole role, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLAYOUT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QLayout * par3 = (QLayout *) _qt5xhb_itemGetPtr(3);
    obj->setLayout ( (int) hb_parni(1),  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowWrapPolicy ( RowWrapPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setRowWrapPolicy (  (QFormLayout::RowWrapPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETVERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVerticalSpacing ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidget ( int row, ItemRole role, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETWIDGET )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par2 = hb_parni(2);
    QWidget * par3 = (QWidget *) _qt5xhb_itemGetPtr(3);
    obj->setWidget ( (int) hb_parni(1),  (QFormLayout::ItemRole) par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int spacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->spacing (  ) );
  }
}


/*
int verticalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_VERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->verticalSpacing (  ) );
  }
}


/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDITEM )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * par1 = (QLayoutItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_COUNT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_EXPANDINGDIRECTIONS )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->expandingDirections (  ) );
  }
}


/*
virtual bool hasHeightForWidth () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HASHEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->hasHeightForWidth (  ) );
  }
}


/*
virtual int heightForWidth ( int width ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->heightForWidth ( (int) hb_parni(1) ) );
  }
}


/*
virtual void invalidate ()
*/
HB_FUNC_STATIC( QFORMLAYOUT_INVALIDATE )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invalidate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_MINIMUMSIZE )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual void setGeometry ( const QRect & rect )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETGEOMETRY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setGeometry ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SIZEHINT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QFORMLAYOUT_TAKEAT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLayoutItem * ptr = obj->takeAt ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}



#pragma ENDDUMP
