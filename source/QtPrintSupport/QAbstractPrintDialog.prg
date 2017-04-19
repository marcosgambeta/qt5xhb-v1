/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QAbstractPrintDialog INHERIT QDialog

   DATA class_id INIT Class_Id_QAbstractPrintDialog
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD exec
   METHOD fromPage
   METHOD maxPage
   METHOD minPage
   METHOD printRange
   METHOD printer
   METHOD setFromTo
   METHOD setMinMax
   METHOD setOptionTabs
   METHOD setPrintRange
   METHOD toPage
   METHOD addEnabledOption
   METHOD setEnabledOptions
   METHOD enabledOptions
   METHOD isOptionEnabled

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractPrintDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractPrintDialog>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractPrintDialog>
#endif


HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_DELETE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int exec () = 0
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_EXEC )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->exec (  ) );
  }
}


/*
int fromPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_FROMPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->fromPage (  ) );
  }
}


/*
int maxPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_MAXPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxPage (  ) );
  }
}


/*
int minPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_MINPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->minPage (  ) );
  }
}


/*
PrintRange printRange () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_PRINTRANGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->printRange (  ) );
  }
}


/*
QPrinter * printer () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_PRINTER )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPrinter * ptr = obj->printer (  );
    _qt5xhb_createReturnClass ( ptr, "QPRINTER" );
  }
}


/*
void setFromTo ( int from, int to )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETFROMTO )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFromTo ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMinMax ( int min, int max )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETMINMAX )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinMax ( (int) hb_parni(1), (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOptionTabs ( const QList<QWidget *> & tabs )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETOPTIONTABS )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWidget *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setOptionTabs ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrintRange ( PrintRange range )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETPRINTRANGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPrintRange (  (QAbstractPrintDialog::PrintRange) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int toPage () const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_TOPAGE )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->toPage (  ) );
  }
}


/*
void addEnabledOption(PrintDialogOption option)
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_ADDENABLEDOPTION )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->addEnabledOption (  (QAbstractPrintDialog::PrintDialogOption) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEnabledOptions(PrintDialogOptions options)
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETENABLEDOPTIONS )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setEnabledOptions (  (QAbstractPrintDialog::PrintDialogOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PrintDialogOptions enabledOptions() const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_ENABLEDOPTIONS )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->enabledOptions (  ) );
  }
}


/*
bool isOptionEnabled(PrintDialogOption option) const
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_ISOPTIONENABLED )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isOptionEnabled (  (QAbstractPrintDialog::PrintDialogOption) par1 ) );
  }
}



#pragma ENDDUMP
