"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

# NOTE: version updates here should also update the major, minor, and patch variables declared in
# the  copts field of the //third_party/aws:aws target

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.7.266.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.7.266.tar.gz",
        ],
        sha256 = "39fd8a2999260d2b8fcbc8187f1ed5299972c2b8bd14adb7850fd674fea67fb7",
        strip_prefix = "aws-sdk-cpp-1.7.266",
        build_file = "//third_party/aws:BUILD.bazel",
    )

    third_party_http_archive(
        name = "aws-c-common",
        urls = [
            "http://mirror.tensorflow.org/github.com/awslabs/aws-c-common/archive/v0.4.29.tar.gz",
            "https://github.com/awslabs/aws-c-common/archive/v0.4.29.tar.gz",
        ],
        sha256 = "01c2a58553a37b3aa5914d9e0bf7bf14507ff4937bc5872a678892ca20fcae1f",
        strip_prefix = "aws-c-common-0.4.29",
        build_file = "//third_party/aws:aws-c-common.bazel",
    )

    third_party_http_archive(
        name = "aws-c-event-stream",
        urls = [
            "https://mirror.tensorflow.org/github.com/awslabs/aws-c-event-stream/archive/v0.1.4.tar.gz",
            "https://github.com/awslabs/aws-c-event-stream/archive/v0.1.4.tar.gz",
        ],
        sha256 = "31d880d1c868d3f3df1e1f4b45e56ac73724a4dc3449d04d47fc0746f6f077b6",
        strip_prefix = "aws-c-event-stream-0.1.4",
        build_file = "//third_party/aws:aws-c-event-stream.bazel",
    )

    third_party_http_archive(
        name = "aws-checksums",
        urls = [
            "https://mirror.tensorflow.org/github.com/awslabs/aws-checksums/archive/v0.1.5.tar.gz",
            "https://github.com/awslabs/aws-checksums/archive/v0.1.5.tar.gz",
        ],
        sha256 = "6e6bed6f75cf54006b6bafb01b3b96df19605572131a2260fddaf0e87949ced0",
        strip_prefix = "aws-checksums-0.1.5",
        build_file = "//third_party/aws:aws-checksums.bazel",
    )
