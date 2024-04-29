using {my.testlocale.Material as schemaMaterials} from '../db/test1locale-schema';
using {my.testlocale.Flutes as schemaFlutes} from '../db/test1locale-schema';
@path: 'service/materialService'

service MaterialService {
   entity material               as projection on schemaMaterials;
   entity flutes               as projection on schemaFlutes;
}