// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../r6.dart';

part 'special_types.enums.dart';
part 'special_types.freezed.dart';
part 'special_types.g.dart';

/// [Narrative] A human-readable summary of the resource conveying the
///  essential clinical and business information for the resource.
@freezed
class Narrative with _$Narrative {
  /// [Narrative] A human-readable summary of the resource conveying the
  ///  essential clinical and business information for the resource.
  const Narrative._();

  /// [Narrative] A human-readable summary of the resource conveying the
  ///  essential clinical and business information for the resource.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [status] The status of the narrative - whether it's entirely generated
  ///  (from just the defined data or the extensions too), or whether a human
  ///  authored it and it may contain additional data.
  ///
  /// [statusElement] ("_status") Extensions for status
  ///
  /// [div] The actual narrative content, a stripped down version of XHTML.
  ///
  const factory Narrative({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [status] The status of the narrative - whether it's entirely generated
    ///  (from just the defined data or the extensions too), or whether a human
    ///  authored it and it may contain additional data.
    NarrativeStatus? status,

    /// [statusElement] ("_status") Extensions for status
    @JsonKey(name: '_status') Element? statusElement,

    /// [div] The actual narrative content, a stripped down version of XHTML.
    required FhirMarkdown div,
  }) = _Narrative;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Narrative.fromYaml(dynamic yaml) => yaml is String
      ? Narrative.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Narrative.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Narrative cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Narrative.fromJson(Map<String, dynamic> json) =>
      _$NarrativeFromJson(json);

  /// Acts like a constructor, returns a [Narrative], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Narrative.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$NarrativeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [CodeableReference] A reference to a resource (by instance), or instead, a
///  reference to a concept defined in a terminology or ontology (by class).
@freezed
class CodeableReference with _$CodeableReference {
  /// [CodeableReference] A reference to a resource (by instance), or instead,
  ///  a reference to a concept defined in a terminology or ontology (by class).
  const CodeableReference._();

  /// [CodeableReference] A reference to a resource (by instance), or instead,
  ///  a reference to a concept defined in a terminology or ontology (by class).
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [concept] A reference to a concept - e.g. the information is identified
  ///  by its general class to the degree of precision found in the terminology.
  ///
  /// [reference] A reference to a resource the provides exact details about
  ///  the information being referenced.
  ///
  const factory CodeableReference({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [concept] A reference to a concept - e.g. the information is identified
    ///  by its general class to the degree of precision found in the
    ///  terminology.
    CodeableConcept? concept,

    /// [reference] A reference to a resource the provides exact details about
    ///  the information being referenced.
    Reference? reference,
  }) = _CodeableReference;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeableReference.fromYaml(dynamic yaml) => yaml is String
      ? CodeableReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeableReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeableReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeableReference.fromJson(Map<String, dynamic> json) =>
      _$CodeableReferenceFromJson(json);

  /// Acts like a constructor, returns a [CodeableReference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeableReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeableReferenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [Reference] A reference from one resource to another.
@freezed
class Reference with _$Reference {
  /// [Reference] A reference from one resource to another.
  const Reference._();

  /// [Reference] A reference from one resource to another.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [reference] A reference to a location at which the other resource is
  ///  found. The reference may be a relative reference, in which case it is
  ///  relative to the service base URL, or an absolute URL that resolves to
  ///  the location where the resource is found. The reference may be version
  ///  specific or not. If the reference is not to a FHIR RESTful server, then
  ///  it should be assumed to be version specific. Internal fragment
  ///  references (start with '#') refer to contained resources.
  ///
  /// [referenceElement] ("_reference") Extensions for reference
  ///
  /// [type] The expected type of the target of the reference. If both
  ///  Reference.type and Reference.reference are populated and
  ///  Reference.reference is a FHIR URL, both SHALL be consistent. The type is
  ///  the Canonical URL of Resource Definition that is the type this reference
  ///  refers to. References are URLs that are relative to
  ///  http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference
  ///  to http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are
  ///  only allowed for logical models (and can only be used in references in
  ///  logical models, not resources).
  ///
  /// [typeElement] ("_type") Extensions for type
  ///
  /// [identifier] An identifier for the target resource. This is used when
  ///  there is no way to reference the other resource directly, either because
  ///  the entity it represents is not available through a FHIR server, or
  ///  because there is no way for the author of the resource to convert a
  ///  known identifier to an actual location. There is no requirement that a
  ///  Reference.identifier point to something that is actually exposed as a
  ///  FHIR instance, but it SHALL point to a business concept that would be
  ///  expected to be exposed as a FHIR instance, and that instance would need
  ///  to be of a FHIR resource type allowed by the reference.
  ///
  /// [display] Plain text narrative that identifies the resource in addition
  ///  to the resource reference.
  ///
  /// [displayElement] ("_display") Extensions for display
  ///
  const factory Reference({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [reference] A reference to a location at which the other resource is
    ///  found. The reference may be a relative reference, in which case it is
    ///  relative to the service base URL, or an absolute URL that resolves to
    ///  the location where the resource is found. The reference may be version
    ///  specific or not. If the reference is not to a FHIR RESTful server,
    ///  then it should be assumed to be version specific. Internal fragment
    ///  references (start with '#') refer to contained resources.
    String? reference,

    /// [referenceElement] ("_reference") Extensions for reference
    @JsonKey(name: '_reference') Element? referenceElement,

    /// [type] The expected type of the target of the reference. If both
    ///  Reference.type and Reference.reference are populated and
    ///  Reference.reference is a FHIR URL, both SHALL be consistent. The type
    ///  is the Canonical URL of Resource Definition that is the type this
    ///  reference refers to. References are URLs that are relative to
    ///  http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference
    ///  to http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are
    ///  only allowed for logical models (and can only be used in references in
    ///  logical models, not resources).
    FhirUri? type,

    /// [typeElement] ("_type") Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [identifier] An identifier for the target resource. This is used when
    ///  there is no way to reference the other resource directly, either
    ///  because the entity it represents is not available through a FHIR
    ///  server, or because there is no way for the author of the resource to
    ///  convert a known identifier to an actual location. There is no
    ///  requirement that a Reference.identifier point to something that is
    ///  actually exposed as a FHIR instance, but it SHALL point to a business
    ///  concept that would be expected to be exposed as a FHIR instance, and
    ///  that instance would need to be of a FHIR resource type allowed by the
    ///  reference.
    Identifier? identifier,

    /// [display] Plain text narrative that identifies the resource in addition
    ///  to the resource reference.
    String? display,

    /// [displayElement] ("_display") Extensions for display
    @JsonKey(name: '_display') Element? displayElement,
  }) = _Reference;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Reference.fromYaml(dynamic yaml) => yaml is String
      ? Reference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Reference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Reference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);

  /// Acts like a constructor, returns a [Reference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Reference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ReferenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [RelativeTime] RelativeTime is used to express a point in time or an
///  interval of time relative to an event defined in data types other than
///  dateTime.
@freezed
class RelativeTime with _$RelativeTime {
  /// [RelativeTime] RelativeTime is used to express a point in time or an
  ///  interval of time relative to an event defined in data types other than
  ///  dateTime.
  const RelativeTime._();

  /// [RelativeTime] RelativeTime is used to express a point in time or an
  ///  interval of time relative to an event defined in data types other than
  ///  dateTime.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [contextReference] The specific event occurrence or resource context used
  ///  as a base point (reference point) in time.  This establishes the context
  ///  in which the 'path' is evaluated.
  ///
  /// [contextDefinition] The type of event used as a base point.  Instances of
  ///  this definition will establish the context for evaluating the path to
  ///  determine the base time for the offset.
  ///
  /// [contextPath] Path to the element defining the point in time. Any valid
  ///  FHIRPath expression.
  ///
  /// [contextPathElement] ("_contextPath") Extensions for contextPath
  ///
  /// [contextCode] Coded representation of the event used as a base point
  ///  (reference point) in time.
  ///
  /// [offsetDuration] An offset or offset range before (negative values) or
  ///  after (positive values) the event. Range is limited to time-valued
  ///  quantities (Durations).
  ///
  /// [offsetRange] An offset or offset range before (negative values) or after
  ///  (positive values) the event. Range is limited to time-valued quantities
  ///  (Durations).
  ///
  /// [text] Free-text (human-readable) description.
  ///
  /// [textElement] ("_text") Extensions for text
  ///
  const factory RelativeTime({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [contextReference] The specific event occurrence or resource context
    ///  used as a base point (reference point) in time.  This establishes the
    ///  context in which the 'path' is evaluated.
    Reference? contextReference,

    /// [contextDefinition] The type of event used as a base point.  Instances
    ///  of this definition will establish the context for evaluating the path
    ///  to determine the base time for the offset.
    FhirCanonical? contextDefinition,

    /// [contextPath] Path to the element defining the point in time. Any valid
    ///  FHIRPath expression.
    String? contextPath,

    /// [contextPathElement] ("_contextPath") Extensions for contextPath
    @JsonKey(name: '_contextPath') Element? contextPathElement,

    /// [contextCode] Coded representation of the event used as a base point
    ///  (reference point) in time.
    CodeableConcept? contextCode,

    /// [offsetDuration] An offset or offset range before (negative values) or
    ///  after (positive values) the event. Range is limited to time-valued
    ///  quantities (Durations).
    FhirDuration? offsetDuration,

    /// [offsetRange] An offset or offset range before (negative values) or
    ///  after (positive values) the event. Range is limited to time-valued
    ///  quantities (Durations).
    Range? offsetRange,

    /// [text] Free-text (human-readable) description.
    String? text,

    /// [textElement] ("_text") Extensions for text
    @JsonKey(name: '_text') Element? textElement,
  }) = _RelativeTime;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RelativeTime.fromYaml(dynamic yaml) => yaml is String
      ? RelativeTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RelativeTime.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RelativeTime cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RelativeTime.fromJson(Map<String, dynamic> json) =>
      _$RelativeTimeFromJson(json);

  /// Acts like a constructor, returns a [RelativeTime], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RelativeTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RelativeTimeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [FhirMeta] The metadata about a resource. This is content in the resource
///  that is maintained by the infrastructure. Changes to the content might not
///  always be associated with version changes to the resource.
@freezed
class FhirMeta with _$FhirMeta {
  /// [FhirMeta] The metadata about a resource. This is content in the resource
  ///  that is maintained by the infrastructure. Changes to the content might
  ///  not always be associated with version changes to the resource.
  const FhirMeta._();

  /// [FhirMeta] The metadata about a resource. This is content in the resource
  ///  that is maintained by the infrastructure. Changes to the content might
  ///  not always be associated with version changes to the resource.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [versionId] The version specific identifier, as it appears in the version
  ///  portion of the URL. This value changes when the resource is created,
  ///  updated, or deleted.
  ///
  /// [versionIdElement] ("_versionId") Extensions for versionId
  ///
  /// [lastUpdated] When the resource last changed - e.g. when the version
  ///  changed.
  ///
  /// [lastUpdatedElement] ("_lastUpdated") Extensions for lastUpdated
  ///
  /// [source] A uri that identifies the source system of the resource. This
  ///  provides a minimal amount of [[[Provenance]]] information that can be
  ///  used to track or differentiate the source of information in the
  ///  resource. The source may identify another FHIR server, document,
  ///  message, database, etc.
  ///
  /// [sourceElement] ("_source") Extensions for source
  ///
  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  ///  resources) that this resource claims to conform to. The URL is a
  ///  reference to [[[StructureDefinition.url]]].
  ///
  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  ///
  /// [tag] Tags applied to this resource. Tags are intended to be used to
  ///  identify and relate resources to process and workflow, and applications
  ///  are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  ///
  const factory FhirMeta({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [versionId] The version specific identifier, as it appears in the
    ///  version portion of the URL. This value changes when the resource is
    ///  created, updated, or deleted.
    FhirId? versionId,

    /// [versionIdElement] ("_versionId") Extensions for versionId
    @JsonKey(name: '_versionId') Element? versionIdElement,

    /// [lastUpdated] When the resource last changed - e.g. when the version
    ///  changed.
    FhirInstant? lastUpdated,

    /// [lastUpdatedElement] ("_lastUpdated") Extensions for lastUpdated
    @JsonKey(name: '_lastUpdated') Element? lastUpdatedElement,

    /// [source] A uri that identifies the source system of the resource. This
    ///  provides a minimal amount of [[[Provenance]]] information that can be
    ///  used to track or differentiate the source of information in the
    ///  resource. The source may identify another FHIR server, document,
    ///  message, database, etc.
    FhirUri? source,

    /// [sourceElement] ("_source") Extensions for source
    @JsonKey(name: '_source') Element? sourceElement,

    /// [profile] A list of profiles (references to [[[StructureDefinition]]]
    ///  resources) that this resource claims to conform to. The URL is a
    ///  reference to [[[StructureDefinition.url]]].
    List<FhirCanonical>? profile,
    @JsonKey(name: '_profile') List<Element>? profileElement,

    /// [security] Security labels applied to this resource. These tags connect
    ///  specific resources to the overall security policy and infrastructure.
    List<Coding>? security,

    /// [tag] Tags applied to this resource. Tags are intended to be used to
    ///  identify and relate resources to process and workflow, and
    ///  applications are not required to consider the tags when interpreting
    ///  the meaning of a resource.
    List<Coding>? tag,
  }) = _FhirMeta;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirMeta.fromYaml(dynamic yaml) => yaml is String
      ? FhirMeta.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirMeta.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Meta cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirMeta.fromJson(Map<String, dynamic> json) =>
      _$FhirMetaFromJson(json);

  /// Acts like a constructor, returns a [FhirMeta], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirMeta.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirMetaFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [Dosage] Indicates how the medication is/was taken or should be taken by
///  the patient.
@freezed
class Dosage with _$Dosage {
  /// [Dosage] Indicates how the medication is/was taken or should be taken by
  ///  the patient.
  const Dosage._();

  /// [Dosage] Indicates how the medication is/was taken or should be taken by
  ///  the patient.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [sequence] Indicates the order in which the dosage instructions should be
  ///  applied or interpreted.
  ///
  /// [sequenceElement] ("_sequence") Extensions for sequence
  ///
  /// [text] Free text dosage instructions e.g. SIG.
  ///
  /// [textElement] ("_text") Extensions for text
  ///
  /// [additionalInstruction] Supplemental instructions to the patient on how
  ///  to take the medication  (e.g. "with meals" or"take half to one hour
  ///  before food") or warnings for the patient about the medication (e.g.
  ///  "may cause drowsiness" or "avoid exposure of skin to direct sunlight or
  ///  sunlamps").
  ///
  /// [patientInstruction] Instructions in terms that are understood by the
  ///  patient or consumer.
  ///
  /// [patientInstructionElement] ("_patientInstruction") Extensions for
  ///  patientInstruction
  ///
  /// [timing] When medication should be administered.
  ///
  /// [asNeeded] Indicates whether the Medication is only taken when needed
  ///  within a specific dosing schedule (Boolean option).
  ///
  /// [asNeededElement] ("_asNeeded") Extensions for asNeeded
  ///
  /// [asNeededFor] Indicates whether the Medication is only taken based on a
  ///  precondition for taking the Medication (CodeableConcept).
  ///
  /// [site] Body site to administer to.
  ///
  /// [route] How drug should enter body.
  ///
  /// [method] Technique for administering medication.
  ///
  /// [doseAndRate] Depending on the resource,this is the amount of medication
  ///  administered, to  be administered or typical amount to be administered.
  ///
  /// [maxDosePerPeriod] Upper limit on medication per unit of time.
  ///
  /// [maxDosePerAdministration] Upper limit on medication per administration.
  ///
  /// [maxDosePerLifetime] Upper limit on medication per lifetime of the
  ///  patient.
  ///
  const factory Dosage({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [sequence] Indicates the order in which the dosage instructions should
    ///  be applied or interpreted.
    FhirInteger? sequence,

    /// [sequenceElement] ("_sequence") Extensions for sequence
    @JsonKey(name: '_sequence') Element? sequenceElement,

    /// [text] Free text dosage instructions e.g. SIG.
    String? text,

    /// [textElement] ("_text") Extensions for text
    @JsonKey(name: '_text') Element? textElement,

    /// [additionalInstruction] Supplemental instructions to the patient on how
    ///  to take the medication  (e.g. "with meals" or"take half to one hour
    ///  before food") or warnings for the patient about the medication (e.g.
    ///  "may cause drowsiness" or "avoid exposure of skin to direct sunlight
    ///  or sunlamps").
    List<CodeableConcept>? additionalInstruction,

    /// [patientInstruction] Instructions in terms that are understood by the
    ///  patient or consumer.
    String? patientInstruction,

    /// [patientInstructionElement] ("_patientInstruction") Extensions for
    ///  patientInstruction
    @JsonKey(name: '_patientInstruction') Element? patientInstructionElement,

    /// [timing] When medication should be administered.
    Timing? timing,

    /// [asNeeded] Indicates whether the Medication is only taken when needed
    ///  within a specific dosing schedule (Boolean option).
    FhirBoolean? asNeeded,

    /// [asNeededElement] ("_asNeeded") Extensions for asNeeded
    @JsonKey(name: '_asNeeded') Element? asNeededElement,

    /// [asNeededFor] Indicates whether the Medication is only taken based on a
    ///  precondition for taking the Medication (CodeableConcept).
    List<CodeableConcept>? asNeededFor,

    /// [site] Body site to administer to.
    CodeableConcept? site,

    /// [route] How drug should enter body.
    CodeableConcept? route,

    /// [method] Technique for administering medication.
    CodeableConcept? method,

    /// [doseAndRate] Depending on the resource,this is the amount of
    ///  medication administered, to  be administered or typical amount to be
    ///  administered.
    List<DosageDoseAndRate>? doseAndRate,

    /// [maxDosePerPeriod] Upper limit on medication per unit of time.
    List<Ratio>? maxDosePerPeriod,

    /// [maxDosePerAdministration] Upper limit on medication per administration.
    Quantity? maxDosePerAdministration,

    /// [maxDosePerLifetime] Upper limit on medication per lifetime of the
    ///  patient.
    Quantity? maxDosePerLifetime,
  }) = _Dosage;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Dosage.fromYaml(dynamic yaml) => yaml is String
      ? Dosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Dosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Dosage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Dosage.fromJson(Map<String, dynamic> json) => _$DosageFromJson(json);

  /// Acts like a constructor, returns a [Dosage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Dosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DosageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [DosageDoseAndRate] Indicates how the medication is/was taken or should be
///  taken by the patient.
@freezed
class DosageDoseAndRate with _$DosageDoseAndRate {
  /// [DosageDoseAndRate] Indicates how the medication is/was taken or should
  ///  be taken by the patient.
  const DosageDoseAndRate._();

  /// [DosageDoseAndRate] Indicates how the medication is/was taken or should
  ///  be taken by the patient.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] The kind of dose or rate specified, for example, ordered or
  ///  calculated.
  ///
  /// [doseRange] Amount of medication per dose.
  ///
  /// [doseQuantity] Amount of medication per dose.
  ///
  /// [rateRatio] Amount of medication per unit of time.
  ///
  /// [rateRange] Amount of medication per unit of time.
  ///
  /// [rateQuantity] Amount of medication per unit of time.
  ///
  const factory DosageDoseAndRate({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The kind of dose or rate specified, for example, ordered or
    ///  calculated.
    CodeableConcept? type,

    /// [doseRange] Amount of medication per dose.
    Range? doseRange,

    /// [doseQuantity] Amount of medication per dose.
    Quantity? doseQuantity,

    /// [rateRatio] Amount of medication per unit of time.
    Ratio? rateRatio,

    /// [rateRange] Amount of medication per unit of time.
    Range? rateRange,

    /// [rateQuantity] Amount of medication per unit of time.
    Quantity? rateQuantity,
  }) = _DosageDoseAndRate;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DosageDoseAndRate.fromYaml(dynamic yaml) => yaml is String
      ? DosageDoseAndRate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DosageDoseAndRate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DosageDoseAndRate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DosageDoseAndRate.fromJson(Map<String, dynamic> json) =>
      _$DosageDoseAndRateFromJson(json);

  /// Acts like a constructor, returns a [DosageDoseAndRate], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DosageDoseAndRate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DosageDoseAndRateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinition] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinition with _$ElementDefinition {
  /// [ElementDefinition] Captures constraints on each element within the
  ///  resource, profile, or extension.
  const ElementDefinition._();

  /// [ElementDefinition] Captures constraints on each element within the
  ///  resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [path] The path identifies the element and is expressed as a
  ///  "."-separated list of ancestor elements, beginning with the name of the
  ///  resource or extension.
  ///
  /// [pathElement] ("_path") Extensions for path
  ///
  /// [representation] Codes that define how this element is represented in
  ///  instances, when the deviation varies from the normal case. No extensions
  ///  are allowed on elements with a representation of 'xmlAttr', no matter
  ///  what FHIR serialization format is used.
  ///
  /// [representationElement] ("_representation") Extensions for representation
  ///
  /// [sliceName] The name of this element definition slice, when slicing is
  ///  working. The name must be a token with no dots or spaces. This is a
  ///  unique name referring to a specific set of constraints applied to this
  ///  element, used to provide a name to different slices of the same element.
  ///
  /// [sliceNameElement] ("_sliceName") Extensions for sliceName
  ///
  /// [sliceIsConstraining] If true, indicates that this slice definition is
  ///  constraining a slice definition with the same name in an inherited
  ///  profile. If false, the slice is not overriding any slice in an inherited
  ///  profile. If missing, the slice might or might not be overriding a slice
  ///  in an inherited profile, depending on the sliceName.
  ///
  /// [sliceIsConstrainingElement] ("_sliceIsConstraining") Extensions for
  ///  sliceIsConstraining
  ///
  /// [label] A single preferred label which is the text to display beside the
  ///  element indicating its meaning or to use to prompt for the element in a
  ///  user display or form.
  ///
  /// [labelElement] ("_label") Extensions for label
  ///
  /// [code] A code that has the same meaning as the element in a particular
  ///  terminology.
  ///
  /// [slicing] Indicates that the element is sliced into a set of alternative
  ///  definitions (i.e. in a structure definition, there are multiple
  ///  different constraints on a single element in the base resource). Slicing
  ///  can be used in any resource that has cardinality ..* on the base
  ///  resource, or any resource with a choice of types. The set of slices is
  ///  any elements that come after this in the element sequence that have the
  ///  same path, until a shorter path occurs (the shorter path terminates the
  ///  set).
  ///
  /// [short] A concise description of what this element means (e.g. for use in
  ///  autogenerated summaries).
  ///
  /// [shortElement] ("_short") Extensions for short
  ///
  /// [definition] Provides a complete explanation of the meaning of the data
  ///  element for human readability.  For the case of elements derived from
  ///  existing elements (e.g. constraints), the definition SHALL be consistent
  ///  with the base definition, but convey the meaning of the element in the
  ///  particular context of use of the resource. (Note: The text you are
  ///  reading is specified in ElementDefinition.definition).
  ///
  /// [definitionElement] ("_definition") Extensions for definition
  ///
  /// [comment] Explanatory notes and implementation guidance about the data
  ///  element, including notes about how to use the data properly, exceptions
  ///  to proper use, etc. (Note: The text you are reading is specified in
  ///  ElementDefinition.comment).
  ///
  /// [commentElement] ("_comment") Extensions for comment
  ///
  /// [requirements] This element is for traceability of why the element was
  ///  created and why the constraints exist as they do. This may be used to
  ///  point to source materials or specifications that drove the structure of
  ///  this element.
  ///
  /// [requirementsElement] ("_requirements") Extensions for requirements
  ///
  /// [alias] Identifies additional names by which this element might also be
  ///  known.
  ///
  /// [aliasElement] ("_alias") Extensions for alias
  ///
  /// [min] The minimum number of times this element SHALL appear in the
  ///  instance.
  ///
  /// [minElement] ("_min") Extensions for min
  ///
  /// [max] The maximum number of times this element is permitted to appear in
  ///  the instance.
  ///
  /// [maxElement] ("_max") Extensions for max
  ///
  /// [base] Information about the base definition of the element, provided to
  ///  make it unnecessary for tools to trace the deviation of the element
  ///  through the derived and related profiles. When the element definition is
  ///  not the original definition of an element - e.g. either in a constraint
  ///  on another type, or for elements from a super type in a snap shot - then
  ///  the information in provided in the element definition may be different
  ///  to the base definition. On the original definition of the element, it
  ///  will be same.
  ///
  /// [contentReference] Identifies an element defined elsewhere in the
  ///  definition whose content rules should be applied to the current element.
  ///  ContentReferences bring across all the rules that are in the
  ///  ElementDefinition for the element, including definitions, cardinality
  ///  constraints, bindings, invariants etc.
  ///
  /// [contentReferenceElement] ("_contentReference") Extensions for
  ///  contentReference
  ///
  /// [type] The data type or resource that the value of this element is
  ///  permitted to be.
  ///
  /// [defaultValueBase64Binary] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueBase64BinaryElement] ("_defaultValueBase64Binary")
  ///  Extensions for defaultValueBase64Binary
  ///
  /// [defaultValueBoolean] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueBooleanElement] ("_defaultValueBoolean") Extensions for
  ///  defaultValueBoolean
  ///
  /// [defaultValueCanonical] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueCanonicalElement] ("_defaultValueCanonical") Extensions for
  ///  defaultValueCanonical
  ///
  /// [defaultValueCode] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueCodeElement] ("_defaultValueCode") Extensions for
  ///  defaultValueCode
  ///
  /// [defaultValueDate] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueDateElement] ("_defaultValueDate") Extensions for
  ///  defaultValueDate
  ///
  /// [defaultValueDateTime] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueDateTimeElement] ("_defaultValueDateTime") Extensions for
  ///  defaultValueDateTime
  ///
  /// [defaultValueDecimal] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueDecimalElement] ("_defaultValueDecimal") Extensions for
  ///  defaultValueDecimal
  ///
  /// [defaultValueId] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueIdElement] ("_defaultValueId") Extensions for defaultValueId
  ///
  /// [defaultValueInstant] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueInstantElement] ("_defaultValueInstant") Extensions for
  ///  defaultValueInstant
  ///
  /// [defaultValueInteger] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueIntegerElement] ("_defaultValueInteger") Extensions for
  ///  defaultValueInteger
  ///
  /// [defaultValueInteger64] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueInteger64Element] ("_defaultValueInteger64") Extensions for
  ///  defaultValueInteger64
  ///
  /// [defaultValueMarkdown] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueMarkdownElement] ("_defaultValueMarkdown") Extensions for
  ///  defaultValueMarkdown
  ///
  /// [defaultValueOid] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueOidElement] ("_defaultValueOid") Extensions for
  ///  defaultValueOid
  ///
  /// [defaultValuePositiveInt] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValuePositiveIntElement] ("_defaultValuePositiveInt") Extensions
  ///  for defaultValuePositiveInt
  ///
  /// [defaultValueString] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueStringElement] ("_defaultValueString") Extensions for
  ///  defaultValueString
  ///
  /// [defaultValueTime] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueTimeElement] ("_defaultValueTime") Extensions for
  ///  defaultValueTime
  ///
  /// [defaultValueUnsignedInt] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueUnsignedIntElement] ("_defaultValueUnsignedInt") Extensions
  ///  for defaultValueUnsignedInt
  ///
  /// [defaultValueUri] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueUriElement] ("_defaultValueUri") Extensions for
  ///  defaultValueUri
  ///
  /// [defaultValueUrl] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueUrlElement] ("_defaultValueUrl") Extensions for
  ///  defaultValueUrl
  ///
  /// [defaultValueUuid] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueUuidElement] ("_defaultValueUuid") Extensions for
  ///  defaultValueUuid
  ///
  /// [defaultValueAddress] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueAge] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueAnnotation] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueAttachment] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueCodeableConcept] The value that should be used if there is
  ///  no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueCodeableReference] The value that should be used if there is
  ///  no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueCoding] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueContactPoint] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueCount] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueDistance] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueDuration] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueHumanName] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueIdentifier] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueMoney] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValuePeriod] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueQuantity] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueRange] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueRatio] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueRatioRange] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueReference] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueSampledData] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueSignature] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueTiming] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueContactDetail] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueDataRequirement] The value that should be used if there is
  ///  no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueExpression] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueParameterDefinition] The value that should be used if there
  ///  is no value stated in the instance (e.g. 'if not otherwise specified,
  ///  the abstract is false').
  ///
  /// [defaultValueRelatedArtifact] The value that should be used if there is
  ///  no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueTriggerDefinition] The value that should be used if there is
  ///  no value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueUsageContext] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueAvailability] The value that should be used if there is no
  ///  value stated in the instance (e.g. 'if not otherwise specified, the
  ///  abstract is false').
  ///
  /// [defaultValueExtendedContactDetail] The value that should be used if
  ///  there is no value stated in the instance (e.g. 'if not otherwise
  ///  specified, the abstract is false').
  ///
  /// [defaultValueDosage] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [defaultValueMeta] The value that should be used if there is no value
  ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
  ///  is false').
  ///
  /// [meaningWhenMissing] The Implicit meaning that is to be understood when
  ///  this element is missing (e.g. 'when this element is missing, the period
  ///  is ongoing').
  ///
  /// [meaningWhenMissingElement] ("_meaningWhenMissing") Extensions for
  ///  meaningWhenMissing
  ///
  /// [orderMeaning] If present, indicates that the order of the repeating
  ///  element has meaning and describes what that meaning is.  If absent, it
  ///  means that the order of the element has no meaning.
  ///
  /// [orderMeaningElement] ("_orderMeaning") Extensions for orderMeaning
  ///
  /// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedBase64BinaryElement] ("_fixedBase64Binary") Extensions for
  ///  fixedBase64Binary
  ///
  /// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedBooleanElement] ("_fixedBoolean") Extensions for fixedBoolean
  ///
  /// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedCanonicalElement] ("_fixedCanonical") Extensions for fixedCanonical
  ///
  /// [fixedCode] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedCodeElement] ("_fixedCode") Extensions for fixedCode
  ///
  /// [fixedDate] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedDateElement] ("_fixedDate") Extensions for fixedDate
  ///
  /// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedDateTimeElement] ("_fixedDateTime") Extensions for fixedDateTime
  ///
  /// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedDecimalElement] ("_fixedDecimal") Extensions for fixedDecimal
  ///
  /// [fixedId] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedIdElement] ("_fixedId") Extensions for fixedId
  ///
  /// [fixedInstant] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedInstantElement] ("_fixedInstant") Extensions for fixedInstant
  ///
  /// [fixedInteger] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedIntegerElement] ("_fixedInteger") Extensions for fixedInteger
  ///
  /// [fixedInteger64] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedInteger64Element] ("_fixedInteger64") Extensions for fixedInteger64
  ///
  /// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedMarkdownElement] ("_fixedMarkdown") Extensions for fixedMarkdown
  ///
  /// [fixedOid] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedOidElement] ("_fixedOid") Extensions for fixedOid
  ///
  /// [fixedPositiveInt] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedPositiveIntElement] ("_fixedPositiveInt") Extensions for
  ///  fixedPositiveInt
  ///
  /// [fixedString] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedStringElement] ("_fixedString") Extensions for fixedString
  ///
  /// [fixedTime] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedTimeElement] ("_fixedTime") Extensions for fixedTime
  ///
  /// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedUnsignedIntElement] ("_fixedUnsignedInt") Extensions for
  ///  fixedUnsignedInt
  ///
  /// [fixedUri] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedUriElement] ("_fixedUri") Extensions for fixedUri
  ///
  /// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedUrlElement] ("_fixedUrl") Extensions for fixedUrl
  ///
  /// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedUuidElement] ("_fixedUuid") Extensions for fixedUuid
  ///
  /// [fixedAddress] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedAge] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedAnnotation] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedAttachment] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedCodeableConcept] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedCodeableReference] Specifies a value that SHALL be exactly the
  ///  value  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedCoding] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedContactPoint] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedCount] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedDistance] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedDuration] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedIdentifier] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedMoney] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedPeriod] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedRange] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedRatio] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedRatioRange] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedReference] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedSampledData] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedSignature] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedTiming] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedContactDetail] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedDataRequirement] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedExpression] Specifies a value that SHALL be exactly the value  for
  ///  this element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
  ///  value  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
  ///  value  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedUsageContext] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedAvailability] Specifies a value that SHALL be exactly the value
  ///  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedExtendedContactDetail] Specifies a value that SHALL be exactly the
  ///  value  for this element in the instance, if present. For purposes of
  ///  comparison, non-significant whitespace is ignored, and all values must
  ///  be an exact match (case and accent sensitive). Missing
  ///  elements/attributes must also be missing.
  ///
  /// [fixedDosage] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [fixedMeta] Specifies a value that SHALL be exactly the value  for this
  ///  element in the instance, if present. For purposes of comparison,
  ///  non-significant whitespace is ignored, and all values must be an exact
  ///  match (case and accent sensitive). Missing elements/attributes must also
  ///  be missing.
  ///
  /// [patternBase64Binary] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternBase64BinaryElement] ("_patternBase64Binary") Extensions for
  ///  patternBase64Binary
  ///
  /// [patternBoolean] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternBooleanElement] ("_patternBoolean") Extensions for patternBoolean
  ///
  /// [patternCanonical] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCanonicalElement] ("_patternCanonical") Extensions for
  ///  patternCanonical
  ///
  /// [patternCode] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCodeElement] ("_patternCode") Extensions for patternCode
  ///
  /// [patternDate] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDateElement] ("_patternDate") Extensions for patternDate
  ///
  /// [patternDateTime] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDateTimeElement] ("_patternDateTime") Extensions for
  ///  patternDateTime
  ///
  /// [patternDecimal] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDecimalElement] ("_patternDecimal") Extensions for patternDecimal
  ///
  /// [patternId] Specifies a value that each occurrence of the element in the
  ///  instance SHALL follow - that is, any value in the pattern must be found
  ///  in the instance, if the element has a value. Other additional values may
  ///  be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternIdElement] ("_patternId") Extensions for patternId
  ///
  /// [patternInstant] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternInstantElement] ("_patternInstant") Extensions for patternInstant
  ///
  /// [patternInteger] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternIntegerElement] ("_patternInteger") Extensions for patternInteger
  ///
  /// [patternInteger64] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternInteger64Element] ("_patternInteger64") Extensions for
  ///  patternInteger64
  ///
  /// [patternMarkdown] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternMarkdownElement] ("_patternMarkdown") Extensions for
  ///  patternMarkdown
  ///
  /// [patternOid] Specifies a value that each occurrence of the element in the
  ///  instance SHALL follow - that is, any value in the pattern must be found
  ///  in the instance, if the element has a value. Other additional values may
  ///  be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternOidElement] ("_patternOid") Extensions for patternOid
  ///
  /// [patternPositiveInt] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternPositiveIntElement] ("_patternPositiveInt") Extensions for
  ///  patternPositiveInt
  ///
  /// [patternString] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternStringElement] ("_patternString") Extensions for patternString
  ///
  /// [patternTime] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternTimeElement] ("_patternTime") Extensions for patternTime
  ///
  /// [patternUnsignedInt] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternUnsignedIntElement] ("_patternUnsignedInt") Extensions for
  ///  patternUnsignedInt
  ///
  /// [patternUri] Specifies a value that each occurrence of the element in the
  ///  instance SHALL follow - that is, any value in the pattern must be found
  ///  in the instance, if the element has a value. Other additional values may
  ///  be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternUriElement] ("_patternUri") Extensions for patternUri
  ///
  /// [patternUrl] Specifies a value that each occurrence of the element in the
  ///  instance SHALL follow - that is, any value in the pattern must be found
  ///  in the instance, if the element has a value. Other additional values may
  ///  be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternUrlElement] ("_patternUrl") Extensions for patternUrl
  ///
  /// [patternUuid] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternUuidElement] ("_patternUuid") Extensions for patternUuid
  ///
  /// [patternAddress] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternAge] Specifies a value that each occurrence of the element in the
  ///  instance SHALL follow - that is, any value in the pattern must be found
  ///  in the instance, if the element has a value. Other additional values may
  ///  be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternAnnotation] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternAttachment] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCodeableConcept] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCodeableReference] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCoding] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternContactPoint] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternCount] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDistance] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDuration] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternHumanName] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternIdentifier] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternMoney] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternPeriod] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternQuantity] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternRange] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternRatio] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternRatioRange] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternReference] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternSampledData] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternSignature] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternTiming] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternContactDetail] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDataRequirement] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternExpression] Specifies a value that each occurrence of the element
  ///  in the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternParameterDefinition] Specifies a value that each occurrence of
  ///  the element in the instance SHALL follow - that is, any value in the
  ///  pattern must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternRelatedArtifact] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternTriggerDefinition] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternUsageContext] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternAvailability] Specifies a value that each occurrence of the
  ///  element in the instance SHALL follow - that is, any value in the pattern
  ///  must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternExtendedContactDetail] Specifies a value that each occurrence of
  ///  the element in the instance SHALL follow - that is, any value in the
  ///  pattern must be found in the instance, if the element has a value. Other
  ///  additional values may be found too. This is effectively constraint by
  ///  example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternDosage] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [patternMeta] Specifies a value that each occurrence of the element in
  ///  the instance SHALL follow - that is, any value in the pattern must be
  ///  found in the instance, if the element has a value. Other additional
  ///  values may be found too. This is effectively constraint by example.

  /// When pattern[x] is used to constrain a primitive, it means that the value
  ///  provided in the pattern[x] must match the instance value exactly.
  ///
  /// When an element within a pattern[x] is used to constrain an array, it
  ///  means that each element provided in the pattern[x] must (recursively)
  ///  match at least one element from the instance array.
  ///
  /// When pattern[x] is used to constrain a complex object, it means that each
  ///  property in the pattern must be present in the complex object, and its
  ///  value must recursively match -- i.e.,
  ///
  /// 1. If primitive: it must match exactly the pattern value
  /// 2. If a complex object: it must match (recursively) the pattern value
  /// 3. If an array: it must match (recursively) the pattern value
  ///
  /// If a pattern[x] is declared on a repeating element, the pattern applies
  ///  to all repetitions.  If the desire is for a pattern to apply to only one
  ///  element or a subset of elements, slicing must be used. See [Examples of
  ///  Patterns](elementdefinition-examples.html#pattern-examples) for examples
  ///  of pattern usage and the effect it will have.
  ///
  /// [example] A sample value for this element demonstrating the type of
  ///  information that would typically be found in the element.
  ///
  /// [minValueDate] The minimum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [minValueDateElement] ("_minValueDate") Extensions for minValueDate
  ///
  /// [minValueDateTime] The minimum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [minValueDateTimeElement] ("_minValueDateTime") Extensions for
  ///  minValueDateTime
  ///
  /// [minValueInstant] The minimum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [minValueInstantElement] ("_minValueInstant") Extensions for
  ///  minValueInstant
  ///
  /// [minValueTime] The minimum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [minValueTimeElement] ("_minValueTime") Extensions for minValueTime
  ///
  /// [minValueDecimal] The minimum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [minValueDecimalElement] ("_minValueDecimal") Extensions for
  ///  minValueDecimal
  ///
  /// [minValueInteger] The minimum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [minValueIntegerElement] ("_minValueInteger") Extensions for
  ///  minValueInteger
  ///
  /// [minValueInteger64] The minimum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [minValueInteger64Element] ("_minValueInteger64") Extensions for
  ///  minValueInteger64
  ///
  /// [minValuePositiveInt] The minimum allowed value for the element. The
  ///  value is inclusive. This is allowed for the types date, dateTime,
  ///  instant, time, decimal, integer, and Quantity.
  ///
  /// [minValuePositiveIntElement] ("_minValuePositiveInt") Extensions for
  ///  minValuePositiveInt
  ///
  /// [minValueUnsignedInt] The minimum allowed value for the element. The
  ///  value is inclusive. This is allowed for the types date, dateTime,
  ///  instant, time, decimal, integer, and Quantity.
  ///
  /// [minValueUnsignedIntElement] ("_minValueUnsignedInt") Extensions for
  ///  minValueUnsignedInt
  ///
  /// [minValueQuantity] The minimum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [maxValueDate] The maximum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [maxValueDateElement] ("_maxValueDate") Extensions for maxValueDate
  ///
  /// [maxValueDateTime] The maximum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [maxValueDateTimeElement] ("_maxValueDateTime") Extensions for
  ///  maxValueDateTime
  ///
  /// [maxValueInstant] The maximum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [maxValueInstantElement] ("_maxValueInstant") Extensions for
  ///  maxValueInstant
  ///
  /// [maxValueTime] The maximum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [maxValueTimeElement] ("_maxValueTime") Extensions for maxValueTime
  ///
  /// [maxValueDecimal] The maximum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [maxValueDecimalElement] ("_maxValueDecimal") Extensions for
  ///  maxValueDecimal
  ///
  /// [maxValueInteger] The maximum allowed value for the element. The value is
  ///  inclusive. This is allowed for the types date, dateTime, instant, time,
  ///  decimal, integer, and Quantity.
  ///
  /// [maxValueIntegerElement] ("_maxValueInteger") Extensions for
  ///  maxValueInteger
  ///
  /// [maxValueInteger64] The maximum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [maxValueInteger64Element] ("_maxValueInteger64") Extensions for
  ///  maxValueInteger64
  ///
  /// [maxValuePositiveInt] The maximum allowed value for the element. The
  ///  value is inclusive. This is allowed for the types date, dateTime,
  ///  instant, time, decimal, integer, and Quantity.
  ///
  /// [maxValuePositiveIntElement] ("_maxValuePositiveInt") Extensions for
  ///  maxValuePositiveInt
  ///
  /// [maxValueUnsignedInt] The maximum allowed value for the element. The
  ///  value is inclusive. This is allowed for the types date, dateTime,
  ///  instant, time, decimal, integer, and Quantity.
  ///
  /// [maxValueUnsignedIntElement] ("_maxValueUnsignedInt") Extensions for
  ///  maxValueUnsignedInt
  ///
  /// [maxValueQuantity] The maximum allowed value for the element. The value
  ///  is inclusive. This is allowed for the types date, dateTime, instant,
  ///  time, decimal, integer, and Quantity.
  ///
  /// [maxLength] Indicates the maximum length in characters that is permitted
  ///  to be present in conformant instances and which is expected to be
  ///  supported by conformant consumers that support the element.
  ///  ```maxLength``` SHOULD only be used on primitive data types that have a
  ///  string representation (see
  ///  [[[http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics]]]).
  ///
  ///
  /// [maxLengthElement] ("_maxLength") Extensions for maxLength
  ///
  /// [condition] A reference to an invariant that may make additional
  ///  statements about the cardinality or value in the instance.
  ///
  /// [conditionElement] ("_condition") Extensions for condition
  ///
  /// [constraint] Formal constraints such as co-occurrence and other
  ///  constraints that can be computationally evaluated within the context of
  ///  the instance.
  ///
  /// [mustHaveValue] Specifies for a primitive data type that the value of the
  ///  data type cannot be replaced by an extension.
  ///
  /// [mustHaveValueElement] ("_mustHaveValue") Extensions for mustHaveValue
  ///
  /// [valueAlternatives] Specifies a list of extensions that can appear in
  ///  place of a primitive value.
  ///
  /// [mustSupport] If true, implementations that produce or consume resources
  ///  SHALL provide "support" for the element in some meaningful way. Note
  ///  that this is being phased out and replaced by obligations (see below).
  ///  If false, the element may be ignored and not supported. If false,
  ///  whether to populate or use the data element in any way is at the
  ///  discretion of the implementation.
  ///
  /// [mustSupportElement] ("_mustSupport") Extensions for mustSupport
  ///
  /// [isModifier] If true, the value of this element affects the
  ///  interpretation of the element or resource that contains it, and the
  ///  value of the element cannot be ignored. Typically, this is used for
  ///  status, negation and qualification codes. The effect of this is that the
  ///  element cannot be ignored by systems: they SHALL either recognize the
  ///  element and process it, and/or a pre-determination has been made that it
  ///  is not relevant to their particular system. When used on the root
  ///  element in an extension definition, this indicates whether or not the
  ///  extension is a modifier extension.
  ///
  /// [isModifierElement] ("_isModifier") Extensions for isModifier
  ///
  /// [isModifierReason] Explains how that element affects the interpretation
  ///  of the resource or element that contains it.
  ///
  /// [isModifierReasonElement] ("_isModifierReason") Extensions for
  ///  isModifierReason
  ///
  /// [isSummary] Whether the element should be included if a client requests a
  ///  search with the parameter _summary=true.
  ///
  /// [isSummaryElement] ("_isSummary") Extensions for isSummary
  ///
  /// [binding] Binds to a value set if this element is coded (code, Coding,
  ///  CodeableConcept, Quantity), or the data types (string, uri).
  ///
  /// [mapping] Identifies a concept from an external specification that
  ///  roughly corresponds to this element.
  ///
  const factory ElementDefinition({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [path] The path identifies the element and is expressed as a
    ///  "."-separated list of ancestor elements, beginning with the name of
    ///  the resource or extension.
    String? path,

    /// [pathElement] ("_path") Extensions for path
    @JsonKey(name: '_path') Element? pathElement,

    /// [representation] Codes that define how this element is represented in
    ///  instances, when the deviation varies from the normal case. No
    ///  extensions are allowed on elements with a representation of 'xmlAttr',
    ///  no matter what FHIR serialization format is used.
    List<ElementDefinitionRepresentation>? representation,

    /// [representationElement] ("_representation") Extensions for
    ///  representation
    @JsonKey(name: '_representation') List<Element>? representationElement,

    /// [sliceName] The name of this element definition slice, when slicing is
    ///  working. The name must be a token with no dots or spaces. This is a
    ///  unique name referring to a specific set of constraints applied to this
    ///  element, used to provide a name to different slices of the same
    ///  element.
    String? sliceName,

    /// [sliceNameElement] ("_sliceName") Extensions for sliceName
    @JsonKey(name: '_sliceName') Element? sliceNameElement,

    /// [sliceIsConstraining] If true, indicates that this slice definition is
    ///  constraining a slice definition with the same name in an inherited
    ///  profile. If false, the slice is not overriding any slice in an
    ///  inherited profile. If missing, the slice might or might not be
    ///  overriding a slice in an inherited profile, depending on the sliceName.
    FhirBoolean? sliceIsConstraining,

    /// [sliceIsConstrainingElement] ("_sliceIsConstraining") Extensions for
    ///  sliceIsConstraining
    @JsonKey(name: '_sliceIsConstraining') Element? sliceIsConstrainingElement,

    /// [label] A single preferred label which is the text to display beside
    ///  the element indicating its meaning or to use to prompt for the element
    ///  in a user display or form.
    String? label,

    /// [labelElement] ("_label") Extensions for label
    @JsonKey(name: '_label') Element? labelElement,

    /// [code] A code that has the same meaning as the element in a particular
    ///  terminology.
    List<Coding>? code,

    /// [slicing] Indicates that the element is sliced into a set of
    ///  alternative definitions (i.e. in a structure definition, there are
    ///  multiple different constraints on a single element in the base
    ///  resource). Slicing can be used in any resource that has cardinality
    ///  ..* on the base resource, or any resource with a choice of types. The
    ///  set of slices is any elements that come after this in the element
    ///  sequence that have the same path, until a shorter path occurs (the
    ///  shorter path terminates the set).
    ElementDefinitionSlicing? slicing,

    /// [short] A concise description of what this element means (e.g. for use
    ///  in autogenerated summaries).
    String? short,

    /// [shortElement] ("_short") Extensions for short
    @JsonKey(name: '_short') Element? shortElement,

    /// [definition] Provides a complete explanation of the meaning of the data
    ///  element for human readability.  For the case of elements derived from
    ///  existing elements (e.g. constraints), the definition SHALL be
    ///  consistent with the base definition, but convey the meaning of the
    ///  element in the particular context of use of the resource. (Note: The
    ///  text you are reading is specified in ElementDefinition.definition).
    FhirMarkdown? definition,

    /// [definitionElement] ("_definition") Extensions for definition
    @JsonKey(name: '_definition') Element? definitionElement,

    /// [comment] Explanatory notes and implementation guidance about the data
    ///  element, including notes about how to use the data properly,
    ///  exceptions to proper use, etc. (Note: The text you are reading is
    ///  specified in ElementDefinition.comment).
    FhirMarkdown? comment,

    /// [commentElement] ("_comment") Extensions for comment
    @JsonKey(name: '_comment') Element? commentElement,

    /// [requirements] This element is for traceability of why the element was
    ///  created and why the constraints exist as they do. This may be used to
    ///  point to source materials or specifications that drove the structure
    ///  of this element.
    FhirMarkdown? requirements,

    /// [requirementsElement] ("_requirements") Extensions for requirements
    @JsonKey(name: '_requirements') Element? requirementsElement,

    /// [alias] Identifies additional names by which this element might also be
    ///  known.
    List<String>? alias,

    /// [aliasElement] ("_alias") Extensions for alias
    @JsonKey(name: '_alias') List<Element>? aliasElement,

    /// [min] The minimum number of times this element SHALL appear in the
    ///  instance.
    FhirUnsignedInt? min,

    /// [minElement] ("_min") Extensions for min
    @JsonKey(name: '_min') Element? minElement,

    /// [max] The maximum number of times this element is permitted to appear
    ///  in the instance.
    String? max,

    /// [maxElement] ("_max") Extensions for max
    @JsonKey(name: '_max') Element? maxElement,

    /// [base] Information about the base definition of the element, provided
    ///  to make it unnecessary for tools to trace the deviation of the element
    ///  through the derived and related profiles. When the element definition
    ///  is not the original definition of an element - e.g. either in a
    ///  constraint on another type, or for elements from a super type in a
    ///  snap shot - then the information in provided in the element definition
    ///  may be different to the base definition. On the original definition of
    ///  the element, it will be same.
    ElementDefinitionBase? base,

    /// [contentReference] Identifies an element defined elsewhere in the
    ///  definition whose content rules should be applied to the current
    ///  element. ContentReferences bring across all the rules that are in the
    ///  ElementDefinition for the element, including definitions, cardinality
    ///  constraints, bindings, invariants etc.
    FhirUri? contentReference,

    /// [contentReferenceElement] ("_contentReference") Extensions for
    ///  contentReference
    @JsonKey(name: '_contentReference') Element? contentReferenceElement,

    /// [type] The data type or resource that the value of this element is
    ///  permitted to be.
    List<ElementDefinitionType>? type,

    /// [defaultValueBase64Binary] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirBase64Binary? defaultValueBase64Binary,

    /// [defaultValueBase64BinaryElement] ("_defaultValueBase64Binary")
    ///  Extensions for defaultValueBase64Binary
    @JsonKey(name: '_defaultValueBase64Binary')
    Element? defaultValueBase64BinaryElement,

    /// [defaultValueBoolean] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirBoolean? defaultValueBoolean,

    /// [defaultValueBooleanElement] ("_defaultValueBoolean") Extensions for
    ///  defaultValueBoolean
    @JsonKey(name: '_defaultValueBoolean') Element? defaultValueBooleanElement,

    /// [defaultValueCanonical] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirCanonical? defaultValueCanonical,

    /// [defaultValueCanonicalElement] ("_defaultValueCanonical") Extensions
    ///  for defaultValueCanonical
    @JsonKey(name: '_defaultValueCanonical')
    Element? defaultValueCanonicalElement,

    /// [defaultValueCode] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirCode? defaultValueCode,

    /// [defaultValueCodeElement] ("_defaultValueCode") Extensions for
    ///  defaultValueCode
    @JsonKey(name: '_defaultValueCode') Element? defaultValueCodeElement,

    /// [defaultValueDate] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirDate? defaultValueDate,

    /// [defaultValueDateElement] ("_defaultValueDate") Extensions for
    ///  defaultValueDate
    @JsonKey(name: '_defaultValueDate') Element? defaultValueDateElement,

    /// [defaultValueDateTime] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirDateTime? defaultValueDateTime,

    /// [defaultValueDateTimeElement] ("_defaultValueDateTime") Extensions for
    ///  defaultValueDateTime
    @JsonKey(name: '_defaultValueDateTime')
    Element? defaultValueDateTimeElement,

    /// [defaultValueDecimal] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirDecimal? defaultValueDecimal,

    /// [defaultValueDecimalElement] ("_defaultValueDecimal") Extensions for
    ///  defaultValueDecimal
    @JsonKey(name: '_defaultValueDecimal') Element? defaultValueDecimalElement,

    /// [defaultValueId] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirId? defaultValueId,

    /// [defaultValueIdElement] ("_defaultValueId") Extensions for
    ///  defaultValueId
    @JsonKey(name: '_defaultValueId') Element? defaultValueIdElement,

    /// [defaultValueInstant] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirInstant? defaultValueInstant,

    /// [defaultValueInstantElement] ("_defaultValueInstant") Extensions for
    ///  defaultValueInstant
    @JsonKey(name: '_defaultValueInstant') Element? defaultValueInstantElement,

    /// [defaultValueInteger] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirInteger? defaultValueInteger,

    /// [defaultValueIntegerElement] ("_defaultValueInteger") Extensions for
    ///  defaultValueInteger
    @JsonKey(name: '_defaultValueInteger') Element? defaultValueIntegerElement,

    /// [defaultValueInteger64] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirInteger64? defaultValueInteger64,

    /// [defaultValueInteger64Element] ("_defaultValueInteger64") Extensions
    ///  for defaultValueInteger64
    @JsonKey(name: '_defaultValueInteger64')
    Element? defaultValueInteger64Element,

    /// [defaultValueMarkdown] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirMarkdown? defaultValueMarkdown,

    /// [defaultValueMarkdownElement] ("_defaultValueMarkdown") Extensions for
    ///  defaultValueMarkdown
    @JsonKey(name: '_defaultValueMarkdown')
    Element? defaultValueMarkdownElement,

    /// [defaultValueOid] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirId? defaultValueOid,

    /// [defaultValueOidElement] ("_defaultValueOid") Extensions for
    ///  defaultValueOid
    @JsonKey(name: '_defaultValueOid') Element? defaultValueOidElement,

    /// [defaultValuePositiveInt] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirPositiveInt? defaultValuePositiveInt,

    /// [defaultValuePositiveIntElement] ("_defaultValuePositiveInt")
    ///  Extensions for defaultValuePositiveInt
    @JsonKey(name: '_defaultValuePositiveInt')
    Element? defaultValuePositiveIntElement,

    /// [defaultValueString] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    String? defaultValueString,

    /// [defaultValueStringElement] ("_defaultValueString") Extensions for
    ///  defaultValueString
    @JsonKey(name: '_defaultValueString') Element? defaultValueStringElement,

    /// [defaultValueTime] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirTime? defaultValueTime,

    /// [defaultValueTimeElement] ("_defaultValueTime") Extensions for
    ///  defaultValueTime
    @JsonKey(name: '_defaultValueTime') Element? defaultValueTimeElement,

    /// [defaultValueUnsignedInt] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirUnsignedInt? defaultValueUnsignedInt,

    /// [defaultValueUnsignedIntElement] ("_defaultValueUnsignedInt")
    ///  Extensions for defaultValueUnsignedInt
    @JsonKey(name: '_defaultValueUnsignedInt')
    Element? defaultValueUnsignedIntElement,

    /// [defaultValueUri] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirUri? defaultValueUri,

    /// [defaultValueUriElement] ("_defaultValueUri") Extensions for
    ///  defaultValueUri
    @JsonKey(name: '_defaultValueUri') Element? defaultValueUriElement,

    /// [defaultValueUrl] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirUrl? defaultValueUrl,

    /// [defaultValueUrlElement] ("_defaultValueUrl") Extensions for
    ///  defaultValueUrl
    @JsonKey(name: '_defaultValueUrl') Element? defaultValueUrlElement,

    /// [defaultValueUuid] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirId? defaultValueUuid,

    /// [defaultValueUuidElement] ("_defaultValueUuid") Extensions for
    ///  defaultValueUuid
    @JsonKey(name: '_defaultValueUuid') Element? defaultValueUuidElement,

    /// [defaultValueAddress] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Address? defaultValueAddress,

    /// [defaultValueAge] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Age? defaultValueAge,

    /// [defaultValueAnnotation] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Annotation? defaultValueAnnotation,

    /// [defaultValueAttachment] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Attachment? defaultValueAttachment,

    /// [defaultValueCodeableConcept] The value that should be used if there is
    ///  no value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    CodeableConcept? defaultValueCodeableConcept,

    /// [defaultValueCodeableReference] The value that should be used if there
    ///  is no value stated in the instance (e.g. 'if not otherwise specified,
    ///  the abstract is false').
    CodeableReference? defaultValueCodeableReference,

    /// [defaultValueCoding] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Coding? defaultValueCoding,

    /// [defaultValueContactPoint] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    ContactPoint? defaultValueContactPoint,

    /// [defaultValueCount] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Count? defaultValueCount,

    /// [defaultValueDistance] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Distance? defaultValueDistance,

    /// [defaultValueDuration] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirDuration? defaultValueDuration,

    /// [defaultValueHumanName] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    HumanName? defaultValueHumanName,

    /// [defaultValueIdentifier] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Identifier? defaultValueIdentifier,

    /// [defaultValueMoney] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Money? defaultValueMoney,

    /// [defaultValuePeriod] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Period? defaultValuePeriod,

    /// [defaultValueQuantity] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Quantity? defaultValueQuantity,

    /// [defaultValueRange] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Range? defaultValueRange,

    /// [defaultValueRatio] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Ratio? defaultValueRatio,

    /// [defaultValueRatioRange] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    RatioRange? defaultValueRatioRange,

    /// [defaultValueReference] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Reference? defaultValueReference,

    /// [defaultValueSampledData] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    SampledData? defaultValueSampledData,

    /// [defaultValueSignature] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Signature? defaultValueSignature,

    /// [defaultValueTiming] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Timing? defaultValueTiming,

    /// [defaultValueContactDetail] The value that should be used if there is
    ///  no value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    ContactDetail? defaultValueContactDetail,

    /// [defaultValueDataRequirement] The value that should be used if there is
    ///  no value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    DataRequirement? defaultValueDataRequirement,

    /// [defaultValueExpression] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    FhirExpression? defaultValueExpression,

    /// [defaultValueParameterDefinition] The value that should be used if
    ///  there is no value stated in the instance (e.g. 'if not otherwise
    ///  specified, the abstract is false').
    ParameterDefinition? defaultValueParameterDefinition,

    /// [defaultValueRelatedArtifact] The value that should be used if there is
    ///  no value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    RelatedArtifact? defaultValueRelatedArtifact,

    /// [defaultValueTriggerDefinition] The value that should be used if there
    ///  is no value stated in the instance (e.g. 'if not otherwise specified,
    ///  the abstract is false').
    TriggerDefinition? defaultValueTriggerDefinition,

    /// [defaultValueUsageContext] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    UsageContext? defaultValueUsageContext,

    /// [defaultValueAvailability] The value that should be used if there is no
    ///  value stated in the instance (e.g. 'if not otherwise specified, the
    ///  abstract is false').
    Availability? defaultValueAvailability,

    /// [defaultValueExtendedContactDetail] The value that should be used if
    ///  there is no value stated in the instance (e.g. 'if not otherwise
    ///  specified, the abstract is false').
    ExtendedContactDetail? defaultValueExtendedContactDetail,

    /// [defaultValueDosage] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    Dosage? defaultValueDosage,

    /// [defaultValueMeta] The value that should be used if there is no value
    ///  stated in the instance (e.g. 'if not otherwise specified, the abstract
    ///  is false').
    FhirMeta? defaultValueMeta,

    /// [meaningWhenMissing] The Implicit meaning that is to be understood when
    ///  this element is missing (e.g. 'when this element is missing, the
    ///  period is ongoing').
    FhirMarkdown? meaningWhenMissing,

    /// [meaningWhenMissingElement] ("_meaningWhenMissing") Extensions for
    ///  meaningWhenMissing
    @JsonKey(name: '_meaningWhenMissing') Element? meaningWhenMissingElement,

    /// [orderMeaning] If present, indicates that the order of the repeating
    ///  element has meaning and describes what that meaning is.  If absent, it
    ///  means that the order of the element has no meaning.
    String? orderMeaning,

    /// [orderMeaningElement] ("_orderMeaning") Extensions for orderMeaning
    @JsonKey(name: '_orderMeaning') Element? orderMeaningElement,

    /// [fixedBase64Binary] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    FhirBase64Binary? fixedBase64Binary,

    /// [fixedBase64BinaryElement] ("_fixedBase64Binary") Extensions for
    ///  fixedBase64Binary
    @JsonKey(name: '_fixedBase64Binary') Element? fixedBase64BinaryElement,

    /// [fixedBoolean] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirBoolean? fixedBoolean,

    /// [fixedBooleanElement] ("_fixedBoolean") Extensions for fixedBoolean
    @JsonKey(name: '_fixedBoolean') Element? fixedBooleanElement,

    /// [fixedCanonical] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirCanonical? fixedCanonical,

    /// [fixedCanonicalElement] ("_fixedCanonical") Extensions for
    ///  fixedCanonical
    @JsonKey(name: '_fixedCanonical') Element? fixedCanonicalElement,

    /// [fixedCode] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirCode? fixedCode,

    /// [fixedCodeElement] ("_fixedCode") Extensions for fixedCode
    @JsonKey(name: '_fixedCode') Element? fixedCodeElement,

    /// [fixedDate] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirDate? fixedDate,

    /// [fixedDateElement] ("_fixedDate") Extensions for fixedDate
    @JsonKey(name: '_fixedDate') Element? fixedDateElement,

    /// [fixedDateTime] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirDateTime? fixedDateTime,

    /// [fixedDateTimeElement] ("_fixedDateTime") Extensions for fixedDateTime
    @JsonKey(name: '_fixedDateTime') Element? fixedDateTimeElement,

    /// [fixedDecimal] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirDecimal? fixedDecimal,

    /// [fixedDecimalElement] ("_fixedDecimal") Extensions for fixedDecimal
    @JsonKey(name: '_fixedDecimal') Element? fixedDecimalElement,

    /// [fixedId] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirId? fixedId,

    /// [fixedIdElement] ("_fixedId") Extensions for fixedId
    @JsonKey(name: '_fixedId') Element? fixedIdElement,

    /// [fixedInstant] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirInstant? fixedInstant,

    /// [fixedInstantElement] ("_fixedInstant") Extensions for fixedInstant
    @JsonKey(name: '_fixedInstant') Element? fixedInstantElement,

    /// [fixedInteger] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirInteger? fixedInteger,

    /// [fixedIntegerElement] ("_fixedInteger") Extensions for fixedInteger
    @JsonKey(name: '_fixedInteger') Element? fixedIntegerElement,

    /// [fixedInteger64] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirInteger64? fixedInteger64,

    /// [fixedInteger64Element] ("_fixedInteger64") Extensions for
    ///  fixedInteger64
    @JsonKey(name: '_fixedInteger64') Element? fixedInteger64Element,

    /// [fixedMarkdown] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirMarkdown? fixedMarkdown,

    /// [fixedMarkdownElement] ("_fixedMarkdown") Extensions for fixedMarkdown
    @JsonKey(name: '_fixedMarkdown') Element? fixedMarkdownElement,

    /// [fixedOid] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirId? fixedOid,

    /// [fixedOidElement] ("_fixedOid") Extensions for fixedOid
    @JsonKey(name: '_fixedOid') Element? fixedOidElement,

    /// [fixedPositiveInt] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    FhirPositiveInt? fixedPositiveInt,

    /// [fixedPositiveIntElement] ("_fixedPositiveInt") Extensions for
    ///  fixedPositiveInt
    @JsonKey(name: '_fixedPositiveInt') Element? fixedPositiveIntElement,

    /// [fixedString] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    String? fixedString,

    /// [fixedStringElement] ("_fixedString") Extensions for fixedString
    @JsonKey(name: '_fixedString') Element? fixedStringElement,

    /// [fixedTime] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirTime? fixedTime,

    /// [fixedTimeElement] ("_fixedTime") Extensions for fixedTime
    @JsonKey(name: '_fixedTime') Element? fixedTimeElement,

    /// [fixedUnsignedInt] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    FhirUnsignedInt? fixedUnsignedInt,

    /// [fixedUnsignedIntElement] ("_fixedUnsignedInt") Extensions for
    ///  fixedUnsignedInt
    @JsonKey(name: '_fixedUnsignedInt') Element? fixedUnsignedIntElement,

    /// [fixedUri] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirUri? fixedUri,

    /// [fixedUriElement] ("_fixedUri") Extensions for fixedUri
    @JsonKey(name: '_fixedUri') Element? fixedUriElement,

    /// [fixedUrl] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirUrl? fixedUrl,

    /// [fixedUrlElement] ("_fixedUrl") Extensions for fixedUrl
    @JsonKey(name: '_fixedUrl') Element? fixedUrlElement,

    /// [fixedUuid] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirId? fixedUuid,

    /// [fixedUuidElement] ("_fixedUuid") Extensions for fixedUuid
    @JsonKey(name: '_fixedUuid') Element? fixedUuidElement,

    /// [fixedAddress] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Address? fixedAddress,

    /// [fixedAge] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Age? fixedAge,

    /// [fixedAnnotation] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    Annotation? fixedAnnotation,

    /// [fixedAttachment] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    Attachment? fixedAttachment,

    /// [fixedCodeableConcept] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    CodeableConcept? fixedCodeableConcept,

    /// [fixedCodeableReference] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    CodeableReference? fixedCodeableReference,

    /// [fixedCoding] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Coding? fixedCoding,

    /// [fixedContactPoint] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    ContactPoint? fixedContactPoint,

    /// [fixedCount] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Count? fixedCount,

    /// [fixedDistance] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Distance? fixedDistance,

    /// [fixedDuration] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirDuration? fixedDuration,

    /// [fixedHumanName] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    HumanName? fixedHumanName,

    /// [fixedIdentifier] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    Identifier? fixedIdentifier,

    /// [fixedMoney] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Money? fixedMoney,

    /// [fixedPeriod] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Period? fixedPeriod,

    /// [fixedQuantity] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Quantity? fixedQuantity,

    /// [fixedRange] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Range? fixedRange,

    /// [fixedRatio] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Ratio? fixedRatio,

    /// [fixedRatioRange] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    RatioRange? fixedRatioRange,

    /// [fixedReference] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Reference? fixedReference,

    /// [fixedSampledData] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    SampledData? fixedSampledData,

    /// [fixedSignature] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Signature? fixedSignature,

    /// [fixedTiming] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Timing? fixedTiming,

    /// [fixedContactDetail] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    ContactDetail? fixedContactDetail,

    /// [fixedDataRequirement] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    DataRequirement? fixedDataRequirement,

    /// [fixedExpression] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    FhirExpression? fixedExpression,

    /// [fixedParameterDefinition] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    ParameterDefinition? fixedParameterDefinition,

    /// [fixedRelatedArtifact] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    RelatedArtifact? fixedRelatedArtifact,

    /// [fixedTriggerDefinition] Specifies a value that SHALL be exactly the
    ///  value  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    TriggerDefinition? fixedTriggerDefinition,

    /// [fixedUsageContext] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    UsageContext? fixedUsageContext,

    /// [fixedAvailability] Specifies a value that SHALL be exactly the value
    ///  for this element in the instance, if present. For purposes of
    ///  comparison, non-significant whitespace is ignored, and all values must
    ///  be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    Availability? fixedAvailability,

    /// [fixedExtendedContactDetail] Specifies a value that SHALL be exactly
    ///  the value  for this element in the instance, if present. For purposes
    ///  of comparison, non-significant whitespace is ignored, and all values
    ///  must be an exact match (case and accent sensitive). Missing
    ///  elements/attributes must also be missing.
    ExtendedContactDetail? fixedExtendedContactDetail,

    /// [fixedDosage] Specifies a value that SHALL be exactly the value  for
    ///  this element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    Dosage? fixedDosage,

    /// [fixedMeta] Specifies a value that SHALL be exactly the value  for this
    ///  element in the instance, if present. For purposes of comparison,
    ///  non-significant whitespace is ignored, and all values must be an exact
    ///  match (case and accent sensitive). Missing elements/attributes must
    ///  also be missing.
    FhirMeta? fixedMeta,

    /// [patternBase64Binary] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirBase64Binary? patternBase64Binary,

    /// [patternBase64BinaryElement] ("_patternBase64Binary") Extensions for
    ///  patternBase64Binary
    @JsonKey(name: '_patternBase64Binary') Element? patternBase64BinaryElement,

    /// [patternBoolean] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirBoolean? patternBoolean,

    /// [patternBooleanElement] ("_patternBoolean") Extensions for
    ///  patternBoolean
    @JsonKey(name: '_patternBoolean') Element? patternBooleanElement,

    /// [patternCanonical] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirCanonical? patternCanonical,

    /// [patternCanonicalElement] ("_patternCanonical") Extensions for
    ///  patternCanonical
    @JsonKey(name: '_patternCanonical') Element? patternCanonicalElement,

    /// [patternCode] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirCode? patternCode,

    /// [patternCodeElement] ("_patternCode") Extensions for patternCode
    @JsonKey(name: '_patternCode') Element? patternCodeElement,

    /// [patternDate] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirDate? patternDate,

    /// [patternDateElement] ("_patternDate") Extensions for patternDate
    @JsonKey(name: '_patternDate') Element? patternDateElement,

    /// [patternDateTime] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirDateTime? patternDateTime,

    /// [patternDateTimeElement] ("_patternDateTime") Extensions for
    ///  patternDateTime
    @JsonKey(name: '_patternDateTime') Element? patternDateTimeElement,

    /// [patternDecimal] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirDecimal? patternDecimal,

    /// [patternDecimalElement] ("_patternDecimal") Extensions for
    ///  patternDecimal
    @JsonKey(name: '_patternDecimal') Element? patternDecimalElement,

    /// [patternId] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirId? patternId,

    /// [patternIdElement] ("_patternId") Extensions for patternId
    @JsonKey(name: '_patternId') Element? patternIdElement,

    /// [patternInstant] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirInstant? patternInstant,

    /// [patternInstantElement] ("_patternInstant") Extensions for
    ///  patternInstant
    @JsonKey(name: '_patternInstant') Element? patternInstantElement,

    /// [patternInteger] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirInteger? patternInteger,

    /// [patternIntegerElement] ("_patternInteger") Extensions for
    ///  patternInteger
    @JsonKey(name: '_patternInteger') Element? patternIntegerElement,

    /// [patternInteger64] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirInteger64? patternInteger64,

    /// [patternInteger64Element] ("_patternInteger64") Extensions for
    ///  patternInteger64
    @JsonKey(name: '_patternInteger64') Element? patternInteger64Element,

    /// [patternMarkdown] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirMarkdown? patternMarkdown,

    /// [patternMarkdownElement] ("_patternMarkdown") Extensions for
    ///  patternMarkdown
    @JsonKey(name: '_patternMarkdown') Element? patternMarkdownElement,

    /// [patternOid] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirId? patternOid,

    /// [patternOidElement] ("_patternOid") Extensions for patternOid
    @JsonKey(name: '_patternOid') Element? patternOidElement,

    /// [patternPositiveInt] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirPositiveInt? patternPositiveInt,

    /// [patternPositiveIntElement] ("_patternPositiveInt") Extensions for
    ///  patternPositiveInt
    @JsonKey(name: '_patternPositiveInt') Element? patternPositiveIntElement,

    /// [patternString] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    String? patternString,

    /// [patternStringElement] ("_patternString") Extensions for patternString
    @JsonKey(name: '_patternString') Element? patternStringElement,

    /// [patternTime] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirTime? patternTime,

    /// [patternTimeElement] ("_patternTime") Extensions for patternTime
    @JsonKey(name: '_patternTime') Element? patternTimeElement,

    /// [patternUnsignedInt] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirUnsignedInt? patternUnsignedInt,

    /// [patternUnsignedIntElement] ("_patternUnsignedInt") Extensions for
    ///  patternUnsignedInt
    @JsonKey(name: '_patternUnsignedInt') Element? patternUnsignedIntElement,

    /// [patternUri] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirUri? patternUri,

    /// [patternUriElement] ("_patternUri") Extensions for patternUri
    @JsonKey(name: '_patternUri') Element? patternUriElement,

    /// [patternUrl] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirUrl? patternUrl,

    /// [patternUrlElement] ("_patternUrl") Extensions for patternUrl
    @JsonKey(name: '_patternUrl') Element? patternUrlElement,

    /// [patternUuid] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirId? patternUuid,

    /// [patternUuidElement] ("_patternUuid") Extensions for patternUuid
    @JsonKey(name: '_patternUuid') Element? patternUuidElement,

    /// [patternAddress] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Address? patternAddress,

    /// [patternAge] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Age? patternAge,

    /// [patternAnnotation] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Annotation? patternAnnotation,

    /// [patternAttachment] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Attachment? patternAttachment,

    /// [patternCodeableConcept] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    CodeableConcept? patternCodeableConcept,

    /// [patternCodeableReference] Specifies a value that each occurrence of
    ///  the element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    CodeableReference? patternCodeableReference,

    /// [patternCoding] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Coding? patternCoding,

    /// [patternContactPoint] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    ContactPoint? patternContactPoint,

    /// [patternCount] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Count? patternCount,

    /// [patternDistance] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Distance? patternDistance,

    /// [patternDuration] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirDuration? patternDuration,

    /// [patternHumanName] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    HumanName? patternHumanName,

    /// [patternIdentifier] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Identifier? patternIdentifier,

    /// [patternMoney] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Money? patternMoney,

    /// [patternPeriod] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Period? patternPeriod,

    /// [patternQuantity] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Quantity? patternQuantity,

    /// [patternRange] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Range? patternRange,

    /// [patternRatio] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Ratio? patternRatio,

    /// [patternRatioRange] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    RatioRange? patternRatioRange,

    /// [patternReference] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Reference? patternReference,

    /// [patternSampledData] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    SampledData? patternSampledData,

    /// [patternSignature] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Signature? patternSignature,

    /// [patternTiming] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Timing? patternTiming,

    /// [patternContactDetail] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    ContactDetail? patternContactDetail,

    /// [patternDataRequirement] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    DataRequirement? patternDataRequirement,

    /// [patternExpression] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirExpression? patternExpression,

    /// [patternParameterDefinition] Specifies a value that each occurrence of
    ///  the element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    ParameterDefinition? patternParameterDefinition,

    /// [patternRelatedArtifact] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    RelatedArtifact? patternRelatedArtifact,

    /// [patternTriggerDefinition] Specifies a value that each occurrence of
    ///  the element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    TriggerDefinition? patternTriggerDefinition,

    /// [patternUsageContext] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    UsageContext? patternUsageContext,

    /// [patternAvailability] Specifies a value that each occurrence of the
    ///  element in the instance SHALL follow - that is, any value in the
    ///  pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Availability? patternAvailability,

    /// [patternExtendedContactDetail] Specifies a value that each occurrence
    ///  of the element in the instance SHALL follow - that is, any value in
    ///  the pattern must be found in the instance, if the element has a value.
    ///  Other additional values may be found too. This is effectively
    ///  constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    ExtendedContactDetail? patternExtendedContactDetail,

    /// [patternDosage] Specifies a value that each occurrence of the element
    ///  in the instance SHALL follow - that is, any value in the pattern must
    ///  be found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    Dosage? patternDosage,

    /// [patternMeta] Specifies a value that each occurrence of the element in
    ///  the instance SHALL follow - that is, any value in the pattern must be
    ///  found in the instance, if the element has a value. Other additional
    ///  values may be found too. This is effectively constraint by example.

    /// When pattern[x] is used to constrain a primitive, it means that the
    ///  value provided in the pattern[x] must match the instance value exactly.
    ///
    /// When an element within a pattern[x] is used to constrain an array, it
    ///  means that each element provided in the pattern[x] must (recursively)
    ///  match at least one element from the instance array.
    ///
    /// When pattern[x] is used to constrain a complex object, it means that
    ///  each property in the pattern must be present in the complex object,
    ///  and its value must recursively match -- i.e.,
    ///
    /// 1. If primitive: it must match exactly the pattern value
    /// 2. If a complex object: it must match (recursively) the pattern value
    /// 3. If an array: it must match (recursively) the pattern value
    ///
    /// If a pattern[x] is declared on a repeating element, the pattern applies
    ///  to all repetitions.  If the desire is for a pattern to apply to only
    ///  one element or a subset of elements, slicing must be used. See
    ///  [Examples of
    ///  Patterns](elementdefinition-examples.html#pattern-examples) for
    ///  examples of pattern usage and the effect it will have.
    FhirMeta? patternMeta,

    /// [example] A sample value for this element demonstrating the type of
    ///  information that would typically be found in the element.
    List<ElementDefinitionExample>? example,

    /// [minValueDate] The minimum allowed value for the element. The value is
    ///  inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDate? minValueDate,

    /// [minValueDateElement] ("_minValueDate") Extensions for minValueDate
    @JsonKey(name: '_minValueDate') Element? minValueDateElement,

    /// [minValueDateTime] The minimum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDateTime? minValueDateTime,

    /// [minValueDateTimeElement] ("_minValueDateTime") Extensions for
    ///  minValueDateTime
    @JsonKey(name: '_minValueDateTime') Element? minValueDateTimeElement,

    /// [minValueInstant] The minimum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirInstant? minValueInstant,

    /// [minValueInstantElement] ("_minValueInstant") Extensions for
    ///  minValueInstant
    @JsonKey(name: '_minValueInstant') Element? minValueInstantElement,

    /// [minValueTime] The minimum allowed value for the element. The value is
    ///  inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirTime? minValueTime,

    /// [minValueTimeElement] ("_minValueTime") Extensions for minValueTime
    @JsonKey(name: '_minValueTime') Element? minValueTimeElement,

    /// [minValueDecimal] The minimum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDecimal? minValueDecimal,

    /// [minValueDecimalElement] ("_minValueDecimal") Extensions for
    ///  minValueDecimal
    @JsonKey(name: '_minValueDecimal') Element? minValueDecimalElement,

    /// [minValueInteger] The minimum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirInteger? minValueInteger,

    /// [minValueIntegerElement] ("_minValueInteger") Extensions for
    ///  minValueInteger
    @JsonKey(name: '_minValueInteger') Element? minValueIntegerElement,

    /// [minValueInteger64] The minimum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirInteger64? minValueInteger64,

    /// [minValueInteger64Element] ("_minValueInteger64") Extensions for
    ///  minValueInteger64
    @JsonKey(name: '_minValueInteger64') Element? minValueInteger64Element,

    /// [minValuePositiveInt] The minimum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirPositiveInt? minValuePositiveInt,

    /// [minValuePositiveIntElement] ("_minValuePositiveInt") Extensions for
    ///  minValuePositiveInt
    @JsonKey(name: '_minValuePositiveInt') Element? minValuePositiveIntElement,

    /// [minValueUnsignedInt] The minimum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirUnsignedInt? minValueUnsignedInt,

    /// [minValueUnsignedIntElement] ("_minValueUnsignedInt") Extensions for
    ///  minValueUnsignedInt
    @JsonKey(name: '_minValueUnsignedInt') Element? minValueUnsignedIntElement,

    /// [minValueQuantity] The minimum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    Quantity? minValueQuantity,

    /// [maxValueDate] The maximum allowed value for the element. The value is
    ///  inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDate? maxValueDate,

    /// [maxValueDateElement] ("_maxValueDate") Extensions for maxValueDate
    @JsonKey(name: '_maxValueDate') Element? maxValueDateElement,

    /// [maxValueDateTime] The maximum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDateTime? maxValueDateTime,

    /// [maxValueDateTimeElement] ("_maxValueDateTime") Extensions for
    ///  maxValueDateTime
    @JsonKey(name: '_maxValueDateTime') Element? maxValueDateTimeElement,

    /// [maxValueInstant] The maximum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirInstant? maxValueInstant,

    /// [maxValueInstantElement] ("_maxValueInstant") Extensions for
    ///  maxValueInstant
    @JsonKey(name: '_maxValueInstant') Element? maxValueInstantElement,

    /// [maxValueTime] The maximum allowed value for the element. The value is
    ///  inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirTime? maxValueTime,

    /// [maxValueTimeElement] ("_maxValueTime") Extensions for maxValueTime
    @JsonKey(name: '_maxValueTime') Element? maxValueTimeElement,

    /// [maxValueDecimal] The maximum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirDecimal? maxValueDecimal,

    /// [maxValueDecimalElement] ("_maxValueDecimal") Extensions for
    ///  maxValueDecimal
    @JsonKey(name: '_maxValueDecimal') Element? maxValueDecimalElement,

    /// [maxValueInteger] The maximum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    FhirInteger? maxValueInteger,

    /// [maxValueIntegerElement] ("_maxValueInteger") Extensions for
    ///  maxValueInteger
    @JsonKey(name: '_maxValueInteger') Element? maxValueIntegerElement,

    /// [maxValueInteger64] The maximum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirInteger64? maxValueInteger64,

    /// [maxValueInteger64Element] ("_maxValueInteger64") Extensions for
    ///  maxValueInteger64
    @JsonKey(name: '_maxValueInteger64') Element? maxValueInteger64Element,

    /// [maxValuePositiveInt] The maximum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirPositiveInt? maxValuePositiveInt,

    /// [maxValuePositiveIntElement] ("_maxValuePositiveInt") Extensions for
    ///  maxValuePositiveInt
    @JsonKey(name: '_maxValuePositiveInt') Element? maxValuePositiveIntElement,

    /// [maxValueUnsignedInt] The maximum allowed value for the element. The
    ///  value is inclusive. This is allowed for the types date, dateTime,
    ///  instant, time, decimal, integer, and Quantity.
    FhirUnsignedInt? maxValueUnsignedInt,

    /// [maxValueUnsignedIntElement] ("_maxValueUnsignedInt") Extensions for
    ///  maxValueUnsignedInt
    @JsonKey(name: '_maxValueUnsignedInt') Element? maxValueUnsignedIntElement,

    /// [maxValueQuantity] The maximum allowed value for the element. The value
    ///  is inclusive. This is allowed for the types date, dateTime, instant,
    ///  time, decimal, integer, and Quantity.
    Quantity? maxValueQuantity,

    /// [maxLength] Indicates the maximum length in characters that is
    ///  permitted to be present in conformant instances and which is expected
    ///  to be supported by conformant consumers that support the element.
    ///  ```maxLength``` SHOULD only be used on primitive data types that have
    ///  a string representation (see
    ///  [[[http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics]]]).
    ///
    FhirInteger? maxLength,

    /// [maxLengthElement] ("_maxLength") Extensions for maxLength
    @JsonKey(name: '_maxLength') Element? maxLengthElement,

    /// [condition] A reference to an invariant that may make additional
    ///  statements about the cardinality or value in the instance.
    List<FhirId>? condition,

    /// [conditionElement] ("_condition") Extensions for condition
    @JsonKey(name: '_condition') List<Element>? conditionElement,

    /// [constraint] Formal constraints such as co-occurrence and other
    ///  constraints that can be computationally evaluated within the context
    ///  of the instance.
    List<ElementDefinitionConstraint>? constraint,

    /// [mustHaveValue] Specifies for a primitive data type that the value of
    ///  the data type cannot be replaced by an extension.
    FhirBoolean? mustHaveValue,

    /// [mustHaveValueElement] ("_mustHaveValue") Extensions for mustHaveValue
    @JsonKey(name: '_mustHaveValue') Element? mustHaveValueElement,

    /// [valueAlternatives] Specifies a list of extensions that can appear in
    ///  place of a primitive value.
    List<FhirCanonical>? valueAlternatives,

    /// [mustSupport] If true, implementations that produce or consume
    ///  resources SHALL provide "support" for the element in some meaningful
    ///  way. Note that this is being phased out and replaced by obligations
    ///  (see below).  If false, the element may be ignored and not supported.
    ///  If false, whether to populate or use the data element in any way is at
    ///  the discretion of the implementation.
    FhirBoolean? mustSupport,

    /// [mustSupportElement] ("_mustSupport") Extensions for mustSupport
    @JsonKey(name: '_mustSupport') Element? mustSupportElement,

    /// [isModifier] If true, the value of this element affects the
    ///  interpretation of the element or resource that contains it, and the
    ///  value of the element cannot be ignored. Typically, this is used for
    ///  status, negation and qualification codes. The effect of this is that
    ///  the element cannot be ignored by systems: they SHALL either recognize
    ///  the element and process it, and/or a pre-determination has been made
    ///  that it is not relevant to their particular system. When used on the
    ///  root element in an extension definition, this indicates whether or not
    ///  the extension is a modifier extension.
    FhirBoolean? isModifier,

    /// [isModifierElement] ("_isModifier") Extensions for isModifier
    @JsonKey(name: '_isModifier') Element? isModifierElement,

    /// [isModifierReason] Explains how that element affects the interpretation
    ///  of the resource or element that contains it.
    String? isModifierReason,

    /// [isModifierReasonElement] ("_isModifierReason") Extensions for
    ///  isModifierReason
    @JsonKey(name: '_isModifierReason') Element? isModifierReasonElement,

    /// [isSummary] Whether the element should be included if a client requests
    ///  a search with the parameter _summary=true.
    FhirBoolean? isSummary,

    /// [isSummaryElement] ("_isSummary") Extensions for isSummary
    @JsonKey(name: '_isSummary') Element? isSummaryElement,

    /// [binding] Binds to a value set if this element is coded (code, Coding,
    ///  CodeableConcept, Quantity), or the data types (string, uri).
    ElementDefinitionBinding? binding,

    /// [mapping] Identifies a concept from an external specification that
    ///  roughly corresponds to this element.
    List<ElementDefinitionMapping>? mapping,
  }) = _ElementDefinition;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinition.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionSlicing] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionSlicing with _$ElementDefinitionSlicing {
  /// [ElementDefinitionSlicing] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionSlicing._();

  /// [ElementDefinitionSlicing] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [discriminator] Designates which child elements are used to discriminate
  ///  between the slices when processing an instance. If one or more
  ///  discriminators are provided, the value of the child elements in the
  ///  instance data SHALL completely distinguish which slice the element in
  ///  the resource matches based on the allowed values for those elements in
  ///  each of the slices.
  ///
  /// [description] A human-readable text description of how the slicing works.
  ///  If there is no discriminator, this is required to be present to provide
  ///  whatever information is possible about how the slices can be
  ///  differentiated.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [ordered] If the matching elements have to occur in the same order as
  ///  defined in the profile.
  ///
  /// [orderedElement] ("_ordered") Extensions for ordered
  ///
  /// [rules] Whether additional slices are allowed or not. When the slices are
  ///  ordered, profile authors can also say that additional slices are only
  ///  allowed at the end.
  ///
  /// [rulesElement] ("_rules") Extensions for rules
  ///
  const factory ElementDefinitionSlicing({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [discriminator] Designates which child elements are used to
    ///  discriminate between the slices when processing an instance. If one or
    ///  more discriminators are provided, the value of the child elements in
    ///  the instance data SHALL completely distinguish which slice the element
    ///  in the resource matches based on the allowed values for those elements
    ///  in each of the slices.
    List<ElementDefinitionDiscriminator>? discriminator,

    /// [description] A human-readable text description of how the slicing
    ///  works. If there is no discriminator, this is required to be present to
    ///  provide whatever information is possible about how the slices can be
    ///  differentiated.
    String? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [ordered] If the matching elements have to occur in the same order as
    ///  defined in the profile.
    FhirBoolean? ordered,

    /// [orderedElement] ("_ordered") Extensions for ordered
    @JsonKey(name: '_ordered') Element? orderedElement,

    /// [rules] Whether additional slices are allowed or not. When the slices
    ///  are ordered, profile authors can also say that additional slices are
    ///  only allowed at the end.
    ElementDefinitionSlicingRules? rules,

    /// [rulesElement] ("_rules") Extensions for rules
    @JsonKey(name: '_rules') Element? rulesElement,
  }) = _ElementDefinitionSlicing;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionSlicing.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionSlicing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionSlicing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionSlicing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionSlicing.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionSlicingFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionSlicing], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionSlicing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionSlicingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionDiscriminator] Captures constraints on each element
///  within the resource, profile, or extension.
@freezed
class ElementDefinitionDiscriminator with _$ElementDefinitionDiscriminator {
  /// [ElementDefinitionDiscriminator] Captures constraints on each element
  ///  within the resource, profile, or extension.
  const ElementDefinitionDiscriminator._();

  /// [ElementDefinitionDiscriminator] Captures constraints on each element
  ///  within the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [type] How the element value is interpreted when discrimination is
  ///  evaluated.
  ///
  /// [typeElement] ("_type") Extensions for type
  ///
  /// [path] A FHIRPath expression, using [the simple subset of
  ///  FHIRPath](fhirpath.html#simple), that is used to identify the element on
  ///  which discrimination is based.
  ///
  /// [pathElement] ("_path") Extensions for path
  ///
  const factory ElementDefinitionDiscriminator({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] How the element value is interpreted when discrimination is
    ///  evaluated.
    ElementDefinitionDiscriminatorType? type,

    /// [typeElement] ("_type") Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [path] A FHIRPath expression, using [the simple subset of
    ///  FHIRPath](fhirpath.html#simple), that is used to identify the element
    ///  on which discrimination is based.
    String? path,

    /// [pathElement] ("_path") Extensions for path
    @JsonKey(name: '_path') Element? pathElement,
  }) = _ElementDefinitionDiscriminator;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionDiscriminator.fromYaml(dynamic yaml) => yaml
          is String
      ? ElementDefinitionDiscriminator.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionDiscriminator.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionDiscriminator cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionDiscriminator.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionDiscriminatorFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionDiscriminator],
  ///  accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionDiscriminator.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionDiscriminatorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionBase] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionBase with _$ElementDefinitionBase {
  /// [ElementDefinitionBase] Captures constraints on each element within the
  ///  resource, profile, or extension.
  const ElementDefinitionBase._();

  /// [ElementDefinitionBase] Captures constraints on each element within the
  ///  resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [path] The Path that identifies the base element - this matches the
  ///  ElementDefinition.path for that element. Across FHIR, there is only one
  ///  base definition of any element - that is, an element definition on a
  ///  [[[StructureDefinition]]] without a StructureDefinition.base.
  ///
  /// [pathElement] ("_path") Extensions for path
  ///
  /// [min] Minimum cardinality of the base element identified by the path.
  ///
  /// [minElement] ("_min") Extensions for min
  ///
  /// [max] Maximum cardinality of the base element identified by the path.
  ///
  /// [maxElement] ("_max") Extensions for max
  ///
  const factory ElementDefinitionBase({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [path] The Path that identifies the base element - this matches the
    ///  ElementDefinition.path for that element. Across FHIR, there is only
    ///  one base definition of any element - that is, an element definition on
    ///  a [[[StructureDefinition]]] without a StructureDefinition.base.
    String? path,

    /// [pathElement] ("_path") Extensions for path
    @JsonKey(name: '_path') Element? pathElement,

    /// [min] Minimum cardinality of the base element identified by the path.
    FhirUnsignedInt? min,

    /// [minElement] ("_min") Extensions for min
    @JsonKey(name: '_min') Element? minElement,

    /// [max] Maximum cardinality of the base element identified by the path.
    String? max,

    /// [maxElement] ("_max") Extensions for max
    @JsonKey(name: '_max') Element? maxElement,
  }) = _ElementDefinitionBase;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionBase.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionBase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionBase cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBase.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionBaseFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionBase], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionBase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionBaseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionType] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionType with _$ElementDefinitionType {
  /// [ElementDefinitionType] Captures constraints on each element within the
  ///  resource, profile, or extension.
  const ElementDefinitionType._();

  /// [ElementDefinitionType] Captures constraints on each element within the
  ///  resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [code] URL of Data type or Resource that is a(or the) type used for this
  ///  element. References are URLs that are relative to
  ///  http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference to
  ///  http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are only
  ///  allowed in logical models.
  ///
  /// [codeElement] ("_code") Extensions for code
  ///
  /// [profile] Identifies a profile structure or implementation Guide that
  ///  applies to the datatype this element refers to. If any profiles are
  ///  specified, then the content must conform to at least one of them. The
  ///  URL can be a local reference - to a contained StructureDefinition, or a
  ///  reference to another StructureDefinition or Implementation Guide by a
  ///  canonical URL. When an implementation guide is specified, the type SHALL
  ///  conform to at least one profile defined in the implementation guide.
  ///
  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  ///  identifies a profile structure or implementation Guide that applies to
  ///  the target of the reference this element refers to. If any profiles are
  ///  specified, then the content must conform to at least one of them. The
  ///  URL can be a local reference - to a contained StructureDefinition, or a
  ///  reference to another StructureDefinition or Implementation Guide by a
  ///  canonical URL. When an implementation guide is specified, the target
  ///  resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  ///
  /// [aggregation] If the type is a reference to another resource, how the
  ///  resource is or can be aggregated - is it a contained resource, or a
  ///  reference, and if the context is a bundle, is it included in the bundle.
  ///
  /// [aggregationElement] ("_aggregation") Extensions for aggregation
  ///
  /// [versioning] Whether this reference needs to be version specific or
  ///  version independent, or whether either can be used.
  ///
  /// [versioningElement] ("_versioning") Extensions for versioning
  ///
  const factory ElementDefinitionType({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] URL of Data type or Resource that is a(or the) type used for
    ///  this element. References are URLs that are relative to
    ///  http://hl7.org/fhir/StructureDefinition e.g. "string" is a reference
    ///  to http://hl7.org/fhir/StructureDefinition/string. Absolute URLs are
    ///  only allowed in logical models.
    FhirUri? code,

    /// [codeElement] ("_code") Extensions for code
    @JsonKey(name: '_code') Element? codeElement,

    /// [profile] Identifies a profile structure or implementation Guide that
    ///  applies to the datatype this element refers to. If any profiles are
    ///  specified, then the content must conform to at least one of them. The
    ///  URL can be a local reference - to a contained StructureDefinition, or
    ///  a reference to another StructureDefinition or Implementation Guide by
    ///  a canonical URL. When an implementation guide is specified, the type
    ///  SHALL conform to at least one profile defined in the implementation
    ///  guide.
    List<FhirCanonical>? profile,
    @JsonKey(name: '_profile') List<Element>? profileElement,

    /// [targetProfile] Used when the type is "Reference" or "canonical", and
    ///  identifies a profile structure or implementation Guide that applies to
    ///  the target of the reference this element refers to. If any profiles
    ///  are specified, then the content must conform to at least one of them.
    ///  The URL can be a local reference - to a contained StructureDefinition,
    ///  or a reference to another StructureDefinition or Implementation Guide
    ///  by a canonical URL. When an implementation guide is specified, the
    ///  target resource SHALL conform to at least one profile defined in the
    ///  implementation guide.
    List<FhirCanonical>? targetProfile,

    /// [aggregation] If the type is a reference to another resource, how the
    ///  resource is or can be aggregated - is it a contained resource, or a
    ///  reference, and if the context is a bundle, is it included in the
    ///  bundle.
    ElementDefinitionTypeAggregation? aggregation,

    /// [aggregationElement] ("_aggregation") Extensions for aggregation
    @JsonKey(name: '_aggregation') List<Element>? aggregationElement,

    /// [versioning] Whether this reference needs to be version specific or
    ///  version independent, or whether either can be used.
    ElementDefinitionTypeVersioning? versioning,

    /// [versioningElement] ("_versioning") Extensions for versioning
    @JsonKey(name: '_versioning') Element? versioningElement,
  }) = _ElementDefinitionType;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionType.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionType.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionTypeFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionType], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionType.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionTypeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionExample] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionExample with _$ElementDefinitionExample {
  /// [ElementDefinitionExample] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionExample._();

  /// [ElementDefinitionExample] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [label] Describes the purpose of this example among the set of examples.
  ///
  /// [labelElement] ("_label") Extensions for label
  ///
  /// [valueBase64Binary] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ///
  /// [valueBase64BinaryElement] ("_valueBase64Binary") Extensions for
  ///  valueBase64Binary
  ///
  /// [valueBoolean] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
  ///
  /// [valueCanonical] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueCanonicalElement] ("_valueCanonical") Extensions for valueCanonical
  ///
  /// [valueCode] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueCodeElement] ("_valueCode") Extensions for valueCode
  ///
  /// [valueDate] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueDateElement] ("_valueDate") Extensions for valueDate
  ///
  /// [valueDateTime] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueDateTimeElement] ("_valueDateTime") Extensions for valueDateTime
  ///
  /// [valueDecimal] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueDecimalElement] ("_valueDecimal") Extensions for valueDecimal
  ///
  /// [valueId] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueIdElement] ("_valueId") Extensions for valueId
  ///
  /// [valueInstant] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueInstantElement] ("_valueInstant") Extensions for valueInstant
  ///
  /// [valueInteger] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueIntegerElement] ("_valueInteger") Extensions for valueInteger
  ///
  /// [valueInteger64] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueInteger64Element] ("_valueInteger64") Extensions for valueInteger64
  ///
  /// [valueMarkdown] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueMarkdownElement] ("_valueMarkdown") Extensions for valueMarkdown
  ///
  /// [valueOid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueOidElement] ("_valueOid") Extensions for valueOid
  ///
  /// [valuePositiveInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valuePositiveIntElement] ("_valuePositiveInt") Extensions for
  ///  valuePositiveInt
  ///
  /// [valueString] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueStringElement] ("_valueString") Extensions for valueString
  ///
  /// [valueTime] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueTimeElement] ("_valueTime") Extensions for valueTime
  ///
  /// [valueUnsignedInt] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueUnsignedIntElement] ("_valueUnsignedInt") Extensions for
  ///  valueUnsignedInt
  ///
  /// [valueUri] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueUriElement] ("_valueUri") Extensions for valueUri
  ///
  /// [valueUrl] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueUrlElement] ("_valueUrl") Extensions for valueUrl
  ///
  /// [valueUuid] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueUuidElement] ("_valueUuid") Extensions for valueUuid
  ///
  /// [valueAddress] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueAge] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueAnnotation] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueAttachment] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueCodeableConcept] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  ///
  /// [valueCodeableReference] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  ///
  /// [valueCoding] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueContactPoint] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ///
  /// [valueCount] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueDistance] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueDuration] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueHumanName] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueIdentifier] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueMoney] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valuePeriod] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueQuantity] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueRange] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueRatio] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueRatioRange] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueReference] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueSampledData] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueSignature] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueTiming] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueContactDetail] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ///
  /// [valueDataRequirement] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  ///
  /// [valueExpression] The actual value for the element, which must be one of
  ///  the types allowed for this element.
  ///
  /// [valueParameterDefinition] The actual value for the element, which must
  ///  be one of the types allowed for this element.
  ///
  /// [valueRelatedArtifact] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  ///
  /// [valueTriggerDefinition] The actual value for the element, which must be
  ///  one of the types allowed for this element.
  ///
  /// [valueUsageContext] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ///
  /// [valueAvailability] The actual value for the element, which must be one
  ///  of the types allowed for this element.
  ///
  /// [valueExtendedContactDetail] The actual value for the element, which must
  ///  be one of the types allowed for this element.
  ///
  /// [valueDosage] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  /// [valueMeta] The actual value for the element, which must be one of the
  ///  types allowed for this element.
  ///
  const factory ElementDefinitionExample({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [label] Describes the purpose of this example among the set of examples.
    String? label,

    /// [labelElement] ("_label") Extensions for label
    @JsonKey(name: '_label') Element? labelElement,

    /// [valueBase64Binary] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] ("_valueBase64Binary") Extensions for
    ///  valueBase64Binary
    @JsonKey(name: '_valueBase64Binary') Element? valueBase64BinaryElement,

    /// [valueBoolean] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] ("_valueBoolean") Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueCanonical] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirCanonical? valueCanonical,

    /// [valueCanonicalElement] ("_valueCanonical") Extensions for
    ///  valueCanonical
    @JsonKey(name: '_valueCanonical') Element? valueCanonicalElement,

    /// [valueCode] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirCode? valueCode,

    /// [valueCodeElement] ("_valueCode") Extensions for valueCode
    @JsonKey(name: '_valueCode') Element? valueCodeElement,

    /// [valueDate] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirDate? valueDate,

    /// [valueDateElement] ("_valueDate") Extensions for valueDate
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueDateTime] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] ("_valueDateTime") Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') Element? valueDateTimeElement,

    /// [valueDecimal] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] ("_valueDecimal") Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') Element? valueDecimalElement,

    /// [valueId] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirId? valueId,

    /// [valueIdElement] ("_valueId") Extensions for valueId
    @JsonKey(name: '_valueId') Element? valueIdElement,

    /// [valueInstant] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirInstant? valueInstant,

    /// [valueInstantElement] ("_valueInstant") Extensions for valueInstant
    @JsonKey(name: '_valueInstant') Element? valueInstantElement,

    /// [valueInteger] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] ("_valueInteger") Extensions for valueInteger
    @JsonKey(name: '_valueInteger') Element? valueIntegerElement,

    /// [valueInteger64] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirInteger64? valueInteger64,

    /// [valueInteger64Element] ("_valueInteger64") Extensions for
    ///  valueInteger64
    @JsonKey(name: '_valueInteger64') Element? valueInteger64Element,

    /// [valueMarkdown] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirMarkdown? valueMarkdown,

    /// [valueMarkdownElement] ("_valueMarkdown") Extensions for valueMarkdown
    @JsonKey(name: '_valueMarkdown') Element? valueMarkdownElement,

    /// [valueOid] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirId? valueOid,

    /// [valueOidElement] ("_valueOid") Extensions for valueOid
    @JsonKey(name: '_valueOid') Element? valueOidElement,

    /// [valuePositiveInt] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    FhirPositiveInt? valuePositiveInt,

    /// [valuePositiveIntElement] ("_valuePositiveInt") Extensions for
    ///  valuePositiveInt
    @JsonKey(name: '_valuePositiveInt') Element? valuePositiveIntElement,

    /// [valueString] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    String? valueString,

    /// [valueStringElement] ("_valueString") Extensions for valueString
    @JsonKey(name: '_valueString') Element? valueStringElement,

    /// [valueTime] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirTime? valueTime,

    /// [valueTimeElement] ("_valueTime") Extensions for valueTime
    @JsonKey(name: '_valueTime') Element? valueTimeElement,

    /// [valueUnsignedInt] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    FhirUnsignedInt? valueUnsignedInt,

    /// [valueUnsignedIntElement] ("_valueUnsignedInt") Extensions for
    ///  valueUnsignedInt
    @JsonKey(name: '_valueUnsignedInt') Element? valueUnsignedIntElement,

    /// [valueUri] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirUri? valueUri,

    /// [valueUriElement] ("_valueUri") Extensions for valueUri
    @JsonKey(name: '_valueUri') Element? valueUriElement,

    /// [valueUrl] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirUrl? valueUrl,

    /// [valueUrlElement] ("_valueUrl") Extensions for valueUrl
    @JsonKey(name: '_valueUrl') Element? valueUrlElement,

    /// [valueUuid] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirId? valueUuid,

    /// [valueUuidElement] ("_valueUuid") Extensions for valueUuid
    @JsonKey(name: '_valueUuid') Element? valueUuidElement,

    /// [valueAddress] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Address? valueAddress,

    /// [valueAge] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    Age? valueAge,

    /// [valueAnnotation] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    Annotation? valueAnnotation,

    /// [valueAttachment] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    Attachment? valueAttachment,

    /// [valueCodeableConcept] The actual value for the element, which must be
    ///  one of the types allowed for this element.
    CodeableConcept? valueCodeableConcept,

    /// [valueCodeableReference] The actual value for the element, which must
    ///  be one of the types allowed for this element.
    CodeableReference? valueCodeableReference,

    /// [valueCoding] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Coding? valueCoding,

    /// [valueContactPoint] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    ContactPoint? valueContactPoint,

    /// [valueCount] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    Count? valueCount,

    /// [valueDistance] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Distance? valueDistance,

    /// [valueDuration] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    FhirDuration? valueDuration,

    /// [valueHumanName] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    HumanName? valueHumanName,

    /// [valueIdentifier] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    Identifier? valueIdentifier,

    /// [valueMoney] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    Money? valueMoney,

    /// [valuePeriod] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Period? valuePeriod,

    /// [valueQuantity] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Quantity? valueQuantity,

    /// [valueRange] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    Range? valueRange,

    /// [valueRatio] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    Ratio? valueRatio,

    /// [valueRatioRange] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    RatioRange? valueRatioRange,

    /// [valueReference] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Reference? valueReference,

    /// [valueSampledData] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    SampledData? valueSampledData,

    /// [valueSignature] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Signature? valueSignature,

    /// [valueTiming] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Timing? valueTiming,

    /// [valueContactDetail] The actual value for the element, which must be
    ///  one of the types allowed for this element.
    ContactDetail? valueContactDetail,

    /// [valueDataRequirement] The actual value for the element, which must be
    ///  one of the types allowed for this element.
    DataRequirement? valueDataRequirement,

    /// [valueExpression] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    FhirExpression? valueExpression,

    /// [valueParameterDefinition] The actual value for the element, which must
    ///  be one of the types allowed for this element.
    ParameterDefinition? valueParameterDefinition,

    /// [valueRelatedArtifact] The actual value for the element, which must be
    ///  one of the types allowed for this element.
    RelatedArtifact? valueRelatedArtifact,

    /// [valueTriggerDefinition] The actual value for the element, which must
    ///  be one of the types allowed for this element.
    TriggerDefinition? valueTriggerDefinition,

    /// [valueUsageContext] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    UsageContext? valueUsageContext,

    /// [valueAvailability] The actual value for the element, which must be one
    ///  of the types allowed for this element.
    Availability? valueAvailability,

    /// [valueExtendedContactDetail] The actual value for the element, which
    ///  must be one of the types allowed for this element.
    ExtendedContactDetail? valueExtendedContactDetail,

    /// [valueDosage] The actual value for the element, which must be one of
    ///  the types allowed for this element.
    Dosage? valueDosage,

    /// [valueMeta] The actual value for the element, which must be one of the
    ///  types allowed for this element.
    FhirMeta? valueMeta,
  }) = _ElementDefinitionExample;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionExample.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionExample.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionExample.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionExample cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionExample.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionExampleFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionExample], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionExample.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionExampleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionConstraint] Captures constraints on each element within
///  the resource, profile, or extension.
@freezed
class ElementDefinitionConstraint with _$ElementDefinitionConstraint {
  /// [ElementDefinitionConstraint] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionConstraint._();

  /// [ElementDefinitionConstraint] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [key] Allows identification of which elements have their cardinalities
  ///  impacted by the constraint.  Will not be referenced for constraints that
  ///  do not affect cardinality.
  ///
  /// [keyElement] ("_key") Extensions for key
  ///
  /// [requirements] Description of why this constraint is necessary or
  ///  appropriate.
  ///
  /// [requirementsElement] ("_requirements") Extensions for requirements
  ///
  /// [severity] Identifies the impact constraint violation has on the
  ///  conformance of the instance.
  ///
  /// [severityElement] ("_severity") Extensions for severity
  ///
  /// [suppress] If true, indicates that the warning or best practice guideline
  ///  should be suppressed.
  ///
  /// [suppressElement] ("_suppress") Extensions for suppress
  ///
  /// [human] Text that can be used to describe the constraint in messages
  ///  identifying that the constraint has been violated.
  ///
  /// [humanElement] ("_human") Extensions for human
  ///
  /// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
  ///  can be executed to see if this constraint is met.
  ///
  /// [expressionElement] ("_expression") Extensions for expression
  ///
  /// [source] A reference to the original source of the constraint, for
  ///  traceability purposes.
  ///
  const factory ElementDefinitionConstraint({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [key] Allows identification of which elements have their cardinalities
    ///  impacted by the constraint.  Will not be referenced for constraints
    ///  that do not affect cardinality.
    FhirId? key,

    /// [keyElement] ("_key") Extensions for key
    @JsonKey(name: '_key') Element? keyElement,

    /// [requirements] Description of why this constraint is necessary or
    ///  appropriate.
    FhirMarkdown? requirements,

    /// [requirementsElement] ("_requirements") Extensions for requirements
    @JsonKey(name: '_requirements') Element? requirementsElement,

    /// [severity] Identifies the impact constraint violation has on the
    ///  conformance of the instance.
    ElementDefinitionConstraintSeverity? severity,

    /// [severityElement] ("_severity") Extensions for severity
    @JsonKey(name: '_severity') Element? severityElement,

    /// [suppress] If true, indicates that the warning or best practice
    ///  guideline should be suppressed.
    FhirBoolean? suppress,

    /// [suppressElement] ("_suppress") Extensions for suppress
    @JsonKey(name: '_suppress') Element? suppressElement,

    /// [human] Text that can be used to describe the constraint in messages
    ///  identifying that the constraint has been violated.
    String? human,

    /// [humanElement] ("_human") Extensions for human
    @JsonKey(name: '_human') Element? humanElement,

    /// [expression] A [FHIRPath](fhirpath.html) expression of constraint that
    ///  can be executed to see if this constraint is met.
    String? expression,

    /// [expressionElement] ("_expression") Extensions for expression
    @JsonKey(name: '_expression') Element? expressionElement,

    /// [source] A reference to the original source of the constraint, for
    ///  traceability purposes.
    FhirCanonical? source,
  }) = _ElementDefinitionConstraint;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionConstraint.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionConstraint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionConstraint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionConstraint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionConstraint.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionConstraintFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionConstraint], accepts
  ///  a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionConstraint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionConstraintFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionBinding] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionBinding with _$ElementDefinitionBinding {
  /// [ElementDefinitionBinding] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionBinding._();

  /// [ElementDefinitionBinding] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [strength] Indicates the degree of conformance expectations associated
  ///  with this binding - that is, the degree to which the provided value set
  ///  must be adhered to in the instances.
  ///
  /// [strengthElement] ("_strength") Extensions for strength
  ///
  /// [description] Describes the intended use of this particular set of codes.
  ///
  /// [descriptionElement] ("_description") Extensions for description
  ///
  /// [valueSet] Refers to the value set that identifies the set of codes the
  ///  binding refers to.
  ///
  /// [additional] Additional bindings that help applications implementing this
  ///  element. Additional bindings do not replace the main binding but provide
  ///  more information and/or context.
  ///
  const factory ElementDefinitionBinding({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [strength] Indicates the degree of conformance expectations associated
    ///  with this binding - that is, the degree to which the provided value
    ///  set must be adhered to in the instances.
    ElementDefinitionBindingStrength? strength,

    /// [strengthElement] ("_strength") Extensions for strength
    @JsonKey(name: '_strength') Element? strengthElement,

    /// [description] Describes the intended use of this particular set of
    ///  codes.
    FhirMarkdown? description,

    /// [descriptionElement] ("_description") Extensions for description
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [valueSet] Refers to the value set that identifies the set of codes the
    ///  binding refers to.
    FhirCanonical? valueSet,

    /// [additional] Additional bindings that help applications implementing
    ///  this element. Additional bindings do not replace the main binding but
    ///  provide more information and/or context.
    List<ElementDefinitionAdditional>? additional,
  }) = _ElementDefinitionBinding;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionBinding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionBinding.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionBindingFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionBinding], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionBinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionBindingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionAdditional] Captures constraints on each element within
///  the resource, profile, or extension.
@freezed
class ElementDefinitionAdditional with _$ElementDefinitionAdditional {
  /// [ElementDefinitionAdditional] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionAdditional._();

  /// [ElementDefinitionAdditional] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [purpose] The use of this additional binding.
  ///
  /// [purposeElement] ("_purpose") Extensions for purpose
  ///
  /// [valueSet] The valueSet that is being bound for the purpose.
  ///
  /// [documentation] Documentation of the purpose of use of the
  ///  bindingproviding additional information about how it is intended to be
  ///  used.
  ///
  /// [documentationElement] ("_documentation") Extensions for documentation
  ///
  /// [shortDoco] Concise documentation - for summary tables.
  ///
  /// [shortDocoElement] ("_shortDoco") Extensions for shortDoco
  ///
  /// [usage] Qualifies the usage of the binding. Typically bindings are
  ///  qualified by jurisdiction, but they may also be qualified by gender,
  ///  workflow status, clinical domain etc. The information to decide whether
  ///  a usege context applies is usually outside the resource, determined by
  ///  context, and this might present challenges for validation tooling.
  ///
  /// [any] Whether the binding applies to all repeats, or just to any one of
  ///  them. This is only relevant for elements that can repeat.
  ///
  /// [anyElement] ("_any") Extensions for any
  ///
  const factory ElementDefinitionAdditional({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [purpose] The use of this additional binding.
    FhirCode? purpose,

    /// [purposeElement] ("_purpose") Extensions for purpose
    @JsonKey(name: '_purpose') Element? purposeElement,

    /// [valueSet] The valueSet that is being bound for the purpose.
    required FhirCanonical valueSet,

    /// [documentation] Documentation of the purpose of use of the
    ///  bindingproviding additional information about how it is intended to be
    ///  used.
    FhirMarkdown? documentation,

    /// [documentationElement] ("_documentation") Extensions for documentation
    @JsonKey(name: '_documentation') Element? documentationElement,

    /// [shortDoco] Concise documentation - for summary tables.
    String? shortDoco,

    /// [shortDocoElement] ("_shortDoco") Extensions for shortDoco
    @JsonKey(name: '_shortDoco') Element? shortDocoElement,

    /// [usage] Qualifies the usage of the binding. Typically bindings are
    ///  qualified by jurisdiction, but they may also be qualified by gender,
    ///  workflow status, clinical domain etc. The information to decide
    ///  whether a usege context applies is usually outside the resource,
    ///  determined by context, and this might present challenges for
    ///  validation tooling.
    List<UsageContext>? usage,

    /// [any] Whether the binding applies to all repeats, or just to any one of
    ///  them. This is only relevant for elements that can repeat.
    FhirBoolean? any,

    /// [anyElement] ("_any") Extensions for any
    @JsonKey(name: '_any') Element? anyElement,
  }) = _ElementDefinitionAdditional;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionAdditional.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionAdditional.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionAdditional.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionAdditional cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionAdditional.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionAdditionalFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionAdditional], accepts
  ///  a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionAdditional.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionAdditionalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}

/// [ElementDefinitionMapping] Captures constraints on each element within the
///  resource, profile, or extension.
@freezed
class ElementDefinitionMapping with _$ElementDefinitionMapping {
  /// [ElementDefinitionMapping] Captures constraints on each element within
  ///  the resource, profile, or extension.
  const ElementDefinitionMapping._();

  /// [ElementDefinitionMapping] Captures constraints on each element within
  ///  the resource, profile, or extension.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] ("extension") May be used to represent additional
  ///  information that is not part of the basic definition of the element. To
  ///  make the use of extensions safe and managable, there is a strict set of
  ///  governance applied to the definition and use of extensions. Though any
  ///  implementer can define an extension, there is a set of requirements that
  ///  SHALL be met as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  ///  is not part of the basic definition of the element and that modifies the
  ///  understanding of the element in which it is contained and/or the
  ///  understanding of the containing element's descendants. Usually modifier
  ///  elements provide negation or qualification. To make the use of
  ///  extensions safe and managable, there is a strict set of governance
  ///  applied to the definition and use of extensions. Though any implementer
  ///  can define an extension, there is a set of requirements that SHALL be
  ///  met as part of the definition of the extension. Applications processing
  ///  a resource are required to check for modifier extensions.Modifier
  ///  extensions SHALL NOT change the meaning of any elements on Resource or
  ///  DomainResource (including cannot change the meaning of modifierExtension
  ///  itself).
  ///
  /// [identity] An internal reference to the definition of a mapping.
  ///
  /// [identityElement] ("_identity") Extensions for identity
  ///
  /// [language] Identifies the computable language in which mapping.map is
  ///  expressed.
  ///
  /// [languageElement] ("_language") Extensions for language
  ///
  /// [map] Expresses what part of the target specification corresponds to this
  ///  element.
  ///
  /// [mapElement] ("_map") Extensions for map
  ///
  /// [comment] Comments that provide information about the mapping or its use.
  ///
  /// [commentElement] ("_comment") Extensions for comment
  ///
  const factory ElementDefinitionMapping({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] ("extension") May be used to represent additional
    ///  information that is not part of the basic definition of the element.
    ///  To make the use of extensions safe and managable, there is a strict
    ///  set of governance applied to the definition and use of extensions.
    ///  Though any implementer can define an extension, there is a set of
    ///  requirements that SHALL be met as part of the definition of the
    ///  extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information
    ///  that is not part of the basic definition of the element and that
    ///  modifies the understanding of the element in which it is contained
    ///  and/or the understanding of the containing element's descendants.
    ///  Usually modifier elements provide negation or qualification. To make
    ///  the use of extensions safe and managable, there is a strict set of
    ///  governance applied to the definition and use of extensions. Though any
    ///  implementer can define an extension, there is a set of requirements
    ///  that SHALL be met as part of the definition of the extension.
    ///  Applications processing a resource are required to check for modifier
    ///  extensions.Modifier extensions SHALL NOT change the meaning of any
    ///  elements on Resource or DomainResource (including cannot change the
    ///  meaning of modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identity] An internal reference to the definition of a mapping.
    FhirId? identity,

    /// [identityElement] ("_identity") Extensions for identity
    @JsonKey(name: '_identity') Element? identityElement,

    /// [language] Identifies the computable language in which mapping.map is
    ///  expressed.
    FhirCode? language,

    /// [languageElement] ("_language") Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [map] Expresses what part of the target specification corresponds to
    ///  this element.
    String? map,

    /// [mapElement] ("_map") Extensions for map
    @JsonKey(name: '_map') Element? mapElement,

    /// [comment] Comments that provide information about the mapping or its
    ///  use.
    FhirMarkdown? comment,

    /// [commentElement] ("_comment") Extensions for comment
    @JsonKey(name: '_comment') Element? commentElement,
  }) = _ElementDefinitionMapping;

  /// Produces a Yaml formatted String version of the object
  String toYaml() => json2yaml(toJson());

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ElementDefinitionMapping.fromYaml(dynamic yaml) => yaml is String
      ? ElementDefinitionMapping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ElementDefinitionMapping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ElementDefinitionMapping cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ElementDefinitionMapping.fromJson(Map<String, dynamic> json) =>
      _$ElementDefinitionMappingFromJson(json);

  /// Acts like a constructor, returns a [ElementDefinitionMapping], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ElementDefinitionMapping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ElementDefinitionMappingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  String toJsonString() => jsonEncode(toJson());
}
