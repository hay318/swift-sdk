/**
 * Copyright IBM Corporation 2018
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

/** Classifier results for one image. */
public struct ClassifiedImage: Decodable {

    /// Source of the image before any redirects. Not returned when the image is uploaded.
    public var sourceUrl: String?

    /// Fully resolved URL of the image after redirects are followed. Not returned when the image is uploaded.
    public var resolvedUrl: String?

    /// Relative path of the image file if uploaded directly. Not returned when the image is passed by URL.
    public var image: String?

    public var error: ErrorInfo?

    public var classifiers: [ClassifierResult]

    // Map each property name to the key that shall be used for encoding/decoding.
    private enum CodingKeys: String, CodingKey {
        case sourceUrl = "source_url"
        case resolvedUrl = "resolved_url"
        case image = "image"
        case error = "error"
        case classifiers = "classifiers"
    }

}
