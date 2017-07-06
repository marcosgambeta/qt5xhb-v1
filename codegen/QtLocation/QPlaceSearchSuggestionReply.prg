$header

#include "hbclass.ch"

CLASS QPlaceSearchSuggestionReply INHERIT QPlaceReply

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD suggestions
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
explicit QPlaceSearchSuggestionReply(QObject *parent = 0)
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * o = new QPlaceSearchSuggestionReply ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


$deleteMethod=5,4,0

/*
QStringList suggestions() const
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_SUGGESTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * obj = (QPlaceSearchSuggestionReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->suggestions () );
  }
#endif
}


/*
Type type() const
*/
HB_FUNC_STATIC( QPLACESEARCHSUGGESTIONREPLY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSearchSuggestionReply * obj = (QPlaceSearchSuggestionReply *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}



#pragma ENDDUMP
