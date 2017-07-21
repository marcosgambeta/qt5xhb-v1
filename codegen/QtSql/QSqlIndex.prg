$header

#include "hbclass.ch"

CLASS QSqlIndex INHERIT QSqlRecord

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD append
   METHOD cursorName
   METHOD setCursorName
   METHOD isDescending
   METHOD setDescending
   METHOD name
   METHOD setName

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
*/
$internalConstructor=|new1|const QString &=QString(),const QString &=QString()

/*
QSqlIndex ( const QSqlIndex & other )
*/
$internalConstructor=|new2|const QSqlIndex &

//[1]explicit QSqlIndex ( const QString & cursorname = QString(), const QString & name = QString() )
//[2]QSqlIndex ( const QSqlIndex & other )

HB_FUNC_STATIC( QSQLINDEX_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTCHAR(1) && ISOPTCHAR(2) )
  {
    QSqlIndex_new1();
  }
  else if( ISNUMPAR(1) && ISQSQLINDEX(1) )
  {
    QSqlIndex_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QSqlField & field )
*/
$internalMethod=|void|append,append1|const QSqlField &

/*
void append ( const QSqlField & field, bool desc )
*/
$internalMethod=|void|append,append2|const QSqlField &,bool

//[1]void append ( const QSqlField & field )
//[2]void append ( const QSqlField & field, bool desc )

HB_FUNC_STATIC( QSQLINDEX_APPEND )
{
  if( ISNUMPAR(1) && ISQSQLFIELD(1) )
  {
    QSqlIndex_append1();
  }
  else if( ISNUMPAR(2) && ISQSQLFIELD(1) && ISLOG(2) )
  {
    QSqlIndex_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString cursorName () const
*/
$method=|QString|cursorName|

/*
void setCursorName ( const QString & cursorName )
*/
$method=|void|setCursorName|const QString &

/*
bool isDescending ( int i ) const
*/
$method=|bool|isDescending|int

/*
void setDescending ( int i, bool desc )
*/
$method=|void|setDescending|int,bool

/*
QString name () const
*/
$method=|QString|name|

/*
void setName ( const QString & name )
*/
$method=|void|setName|const QString &

#pragma ENDDUMP
