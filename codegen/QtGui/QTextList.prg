$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTLISTFORMAT
#endif

CLASS QTextList INHERIT QTextBlockGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD removeItem
   METHOD remove
   METHOD add
   METHOD setFormat
   METHOD format

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextList(QTextDocument *doc)
*/
HB_FUNC_STATIC( QTEXTLIST_NEW )
{
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextList * o = new QTextList ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
int count() const
*/
HB_FUNC_STATIC( QTEXTLIST_COUNT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTLIST_ISEMPTY )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QTextBlock item(int i) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEM )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextBlock * ptr = new QTextBlock( obj->item ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTBLOCK" );
  }
}


/*
int itemNumber(const QTextBlock &) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMNUMBER )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->itemNumber ( *PQTEXTBLOCK(1) ) );
  }
}


/*
QString itemText(const QTextBlock &) const
*/
HB_FUNC_STATIC( QTEXTLIST_ITEMTEXT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->itemText ( *PQTEXTBLOCK(1) ) );
  }
}


/*
void removeItem(int i)
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVEITEM )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeItem ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void remove(const QTextBlock &)
*/
HB_FUNC_STATIC( QTEXTLIST_REMOVE )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->remove ( *PQTEXTBLOCK(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void add(const QTextBlock &block)
*/
HB_FUNC_STATIC( QTEXTLIST_ADD )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->add ( *PQTEXTBLOCK(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat(const QTextListFormat &format)
*/
HB_FUNC_STATIC( QTEXTLIST_SETFORMAT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQTEXTLISTFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextListFormat format() const
*/
HB_FUNC_STATIC( QTEXTLIST_FORMAT )
{
  QTextList * obj = (QTextList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextListFormat * ptr = new QTextListFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLISTFORMAT" );
  }
}



#pragma ENDDUMP
