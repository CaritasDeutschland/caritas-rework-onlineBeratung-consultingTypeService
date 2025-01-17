package de.caritas.cob.consultingtypeservice.api.mapper;

import de.caritas.cob.consultingtypeservice.api.model.ConsultingTypeCoreDTO;
import de.caritas.cob.consultingtypeservice.schemas.model.ConsultingType;

/** Mapping from {@link ConsultingType} to {@link ConsultingTypeCoreDTO}. */
public class ConsultingTypeCoreMapper extends ConsultingTypeMapper {

  /**
   * Mapper for {@link ConsultingType} to {@link ConsultingTypeCoreDTO}.
   *
   * @param consultingType the {@link ConsultingType}
   * @return a instance of an {@link ConsultingTypeCoreDTO}
   */
  public static ConsultingTypeCoreDTO mapConsultingType(ConsultingType consultingType) {
    return new ConsultingTypeCoreDTO().id(consultingType.getId());
  }
}
