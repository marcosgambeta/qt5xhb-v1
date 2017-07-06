$header

#include "hbclass.ch"

CLASS QXmlSimpleReader INHERIT QXmlReader

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QXmlSimpleReader ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_NEW )
{
  QXmlSimpleReader * o = new QXmlSimpleReader ();
  _qt5xhb_storePointerAndFlag( o, true );
}

$deleteMethod

/*
virtual bool parse ( const QXmlInputSource * input, bool incremental )
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlInputSource * par1 = (QXmlInputSource *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->parse ( par1, PBOOL(2) ) );
  }
}


/*
virtual bool parseContinue ()
*/
HB_FUNC_STATIC( QXMLSIMPLEREADER_PARSECONTINUE )
{
  QXmlSimpleReader * obj = (QXmlSimpleReader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->parseContinue () );
  }
}



#pragma ENDDUMP
