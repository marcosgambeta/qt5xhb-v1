$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QValidator INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void fixup ( QString & input ) const
*/
HB_FUNC_STATIC( QVALIDATOR_FIXUP )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->fixup ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale locale () const
*/
HB_FUNC_STATIC( QVALIDATOR_LOCALE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setLocale ( const QLocale & locale )
*/
HB_FUNC_STATIC( QVALIDATOR_SETLOCALE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual State validate ( QString & input, int & pos ) const = 0
*/
HB_FUNC_STATIC( QVALIDATOR_VALIDATE )
{
  QValidator * obj = (QValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2;
    hb_retni( obj->validate ( par1, par2 ) );
  }
}



#pragma ENDDUMP
