$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPRINTER
#endif

CLASS QAbstractPrintDialog INHERIT QDialog

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual int exec () = 0
*/
$method=|int|exec|

/*
int fromPage () const
*/
$method=|int|fromPage|

/*
int maxPage () const
*/
$method=|int|maxPage|

/*
int minPage () const
*/
$method=|int|minPage|

/*
PrintRange printRange () const
*/
$method=|QAbstractPrintDialog::PrintRange|printRange|

/*
QPrinter * printer () const
*/
$method=|QPrinter *|printer|

/*
void setFromTo ( int from, int to )
*/
$method=|void|setFromTo|int,int

/*
void setMinMax ( int min, int max )
*/
$method=|void|setMinMax|int,int

/*
void setOptionTabs ( const QList<QWidget *> & tabs )
*/
HB_FUNC_STATIC( QABSTRACTPRINTDIALOG_SETOPTIONTABS )
{
  QAbstractPrintDialog * obj = (QAbstractPrintDialog *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
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
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPrintRange ( PrintRange range )
*/
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

/*
int toPage () const
*/
$method=|int|toPage|

/*
void addEnabledOption(PrintDialogOption option)
*/
$method=|void|addEnabledOption|QAbstractPrintDialog::PrintDialogOption

/*
void setEnabledOptions(PrintDialogOptions options)
*/
$method=|void|setEnabledOptions|QAbstractPrintDialog::PrintDialogOptions

/*
PrintDialogOptions enabledOptions() const
*/
$method=|QAbstractPrintDialog::PrintDialogOptions|enabledOptions|

/*
bool isOptionEnabled(PrintDialogOption option) const
*/
$method=|bool|isOptionEnabled|QAbstractPrintDialog::PrintDialogOption

#pragma ENDDUMP
