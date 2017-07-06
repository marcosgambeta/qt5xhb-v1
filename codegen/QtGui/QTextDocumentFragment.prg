$header

#include "hbclass.ch"

CLASS QTextDocumentFragment

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD isEmpty
   METHOD toPlainText
   METHOD toHtml
   METHOD fromPlainText
   METHOD fromHtml1
   METHOD fromHtml2

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextDocumentFragment()
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW1 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextDocumentFragment(const QTextDocument *document)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW2 )
{
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextDocumentFragment * o = new QTextDocumentFragment ( par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextDocumentFragment(const QTextCursor &range)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW3 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ( *PQTEXTCURSOR(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QTextDocumentFragment(const QTextDocumentFragment &rhs)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW4 )
{
  QTextDocumentFragment * o = new QTextDocumentFragment ( *PQTEXTDOCUMENTFRAGMENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QTextDocumentFragment()
//[2]QTextDocumentFragment(const QTextDocument *document)
//[3]QTextDocumentFragment(const QTextCursor &range)
//[4]QTextDocumentFragment(const QTextDocumentFragment &rhs)

// TODO: resolver conflitos

HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    HB_FUNC_EXEC( QTEXTDOCUMENTFRAGMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_ISEMPTY )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
QString toPlainText() const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOPLAINTEXT )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->toPlainText () );
  }
}


/*
QString toHtml(const QByteArray &encoding = QByteArray()) const
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_TOHTML )
{
  QTextDocumentFragment * obj = (QTextDocumentFragment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    RQSTRING( obj->toHtml ( par1 ) );
  }
}


/*
static QTextDocumentFragment fromPlainText(const QString &plainText)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMPLAINTEXT )
{
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromPlainText ( PQSTRING(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


/*
static QTextDocumentFragment fromHtml(const QString &html)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML1 )
{
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( PQSTRING(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}


/*
static QTextDocumentFragment fromHtml(const QString &html, const QTextDocument *resourceProvider)
*/
HB_FUNC_STATIC( QTEXTDOCUMENTFRAGMENT_FROMHTML2 )
{
  const QTextDocument * par2 = (const QTextDocument *) _qt5xhb_itemGetPtr(2);
  QTextDocumentFragment * ptr = new QTextDocumentFragment( QTextDocumentFragment::fromHtml ( PQSTRING(1), par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QTEXTDOCUMENTFRAGMENT", true );
}

$extraMethods

#pragma ENDDUMP
