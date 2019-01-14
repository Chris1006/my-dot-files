#!/bin/sh

API_KEY="0cfe69807dfd288145b45827337fcf35"

CITY="Bad Nauheim"

URL="http://api.openweathermap.org/data/2.5/weather?q=${CITY}&appid=${API_KEY}&units=metric"

SYMBOL_CELSIUS="°"

ICON_SUNNY="☀️"
ICON_CLOUDY="☁️"
ICON_RAINY="🌧️"
ICON_STORM="🌬️"
ICON_SNOW="🌨️"
ICON_FOG="🌫️"

WEATHER_INFO=$(wget -qO- "${URL}")
WEATHER_MAIN=$(echo "${WEATHER_INFO}" | grep -o -e '\"main\":\"[a-Z]*\"' | awk -F ':' '{print $2}' | tr -d '"')
WEATHER_TEMP=$(echo "${WEATHER_INFO}" | grep -o -e '\"temp\":\-\?[0-9]*' | awk -F ':' '{print $2}' | tr -d '"')

if [[ "${WEATHER_MAIN}" = *Snow* ]]; then
    echo "${ICON_SNOW} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
        echo ""
      elif [[ "${WEATHER_MAIN}" = *Rain* ]] || [[ "${WEATHER_MAIN}" = *Drizzle* ]]; then
          echo "${ICON_RAINY} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
              echo ""
            elif [[ "${WEATHER_MAIN}" = *Thunderstorm* ]]; then
                echo "${ICON_STORM} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
                    echo ""
                  elif [[ "${WEATHER_MAIN}" = *Cloud* ]]; then
                      echo "${ICON_CLOUDY} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
                          echo ""
                        elif [[ "${WEATHER_MAIN}" = *Clear* ]]; then
                            echo "${ICON_SUNNY} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
                                echo ""
                              elif [[ "${WEATHER_MAIN}" = *Fog* ]] || [[ "${WEATHER_MAIN}" = *Mist* ]]; then
                                  echo "${ICON_FOG} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
                                      echo ""
                                    else
                                        echo "${WEATHER_MAIN} ${WEATHER_TEMP}${SYMBOL_CELSIUS}"
                                            echo ""
                                          fi

                                          if [[ "${WEATHER_TEMP}" -lt "${URGENT_LOWER}" ]] || [[ "${WEATHER_TEMP}" -gt "${URGENT_HIGHER}" ]]; then
                                              exit 33
                                            fi
