import os
from typing import Union

from flask.wrappers import Request

env = os.environ.get("env", "dev")


def handler(request: Union[Request, dict]) -> dict:
    """Responds to any HTTP request.
    Args:
        request (flask.Request): HTTP request object.
    Returns:
        The response text or any set of values that can be turned into a
        Response object using
        `make_response <http://flask.pocoo.org/docs/1.0/api/#flask.Flask.make_response>`.
    """  # noqa: E501

    if env == "prod":
        request_json: dict = request.get_json()  # type: ignore

    if isinstance(request, dict):
        request_json: dict = request
    else:
        request_json: dict = request.get_json()  # type: ignore

    state = request_json.get("state")
    return {
        "state": state,
        "insert": {
            "accounts": "accounts",
            "cities": "cities",
            "videos": "videos",
        },
        "schema": {
            "accounts": {
                "primary_key": ["account", "date_hour", "player"],
            },
            "cities": {
                "primary_key": ["city", "date_hour"],
            },
            "videos": {
                "primary_key": ["video", "date_hour"],
            },
        },
        "hasMore": False,
    }


if __name__ == "__main__":
    # Test function locally
    handler({
        "state": {
            "last_start_time": "begin_time",
            "last_end_time": "end_time",
            "page": "page",
        },
    })
