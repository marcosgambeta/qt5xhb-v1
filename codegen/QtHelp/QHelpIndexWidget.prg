$header

#include "hbclass.ch"

CLASS QHelpIndexWidget INHERIT QListView

   METHOD delete
   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void activateCurrentItem ()
$method=|void|activateCurrentItem|

$prototype=void filterIndices ( const QString & filter, const QString & wildcard = QString() )
$method=|void|filterIndices|const QString &,const QString &=QString()

#pragma ENDDUMP
