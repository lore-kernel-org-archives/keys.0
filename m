Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B31F21EC01E
	for <keys@linux.kernel.org>; Tue,  3 Sep 2024 22:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725404061; cv=none; b=DLX2FAC8pL1iqQGg9UyCjEHF5UxDcsYNYFwQ9fd3wXRPn+304/XjeKgc+Q6Cp/8o5xCEdW2e/KswtP92r8UDyVYsOviCTlIe359vNM2EbbmF3pFdeeZ8gm0nDID9aAkq6+16lKDxlOxY5XXtLFRGTDw6JM7gwp5lrx1OOS2F9d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725404061; c=relaxed/simple;
	bh=uQSd4lOFYpMS+gP4SsUw68Tl5bho3MfSpLlBJtC7LRY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=oTucTLadplSSkJiy1aelwkIBSmTy9PgyQc8mQl/RHkctycWva7PaQsec5dc6faYqN9sslSSHiVlACJhUnBwrIgbWahm+rn88ITpKEYdM4NbIx+MFW5UJpzBpnqnyT6C+3quAOp+pX9EdIX0wA47Zf1Ahw14120aOtgEqM/LAIhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=CPh1m4h2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="CPh1m4h2"
Received: by smtp.kernel.org (Postfix)
	id 4AB6EC4CEC5; Tue,  3 Sep 2024 22:54:21 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id F0260C4CEC4
	for <keys@kernel.org>; Tue,  3 Sep 2024 22:54:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org F0260C4CEC4
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a83562f9be9so567836266b.0
        for <keys@kernel.org>; Tue, 03 Sep 2024 15:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1725404058; x=1726008858; darn=kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NbCtwcjO8ZcGvDOdkUKIs1FaIkHtJFj3TbWdmMqyKCY=;
        b=CPh1m4h2IMzTISLnsBOXHXcqLWWkCb9xl8TrG1wso35N+kbOnadYzGgdFf1D+rfdxB
         LKVp/8BHMpmyxdDpGAqbWERp0xNEsShdXpkD01YAfjgixRH3XyUfGuEMv5K207bStH2R
         Il6Fl/4oQ1kiQlPfBvGtY/1AtcZ/KfhRLSYXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725404058; x=1726008858;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NbCtwcjO8ZcGvDOdkUKIs1FaIkHtJFj3TbWdmMqyKCY=;
        b=nZxehCm27EAJnxATkvKPJSp+9IFTy8nGmjELzktKRtuNygMbuL++lQXIUcxCOp3/Tp
         tjOfe0Enfz8uB+m7ZIyUbBNpjdymbEGfspmu78qNvvpGf6W7EGbkGDLhzctaPXA6eEYH
         TBQs1cCtk972M73CdWgKgINE033cebPKbigX4jG8+Q+qqwC/C5cfOaTpDbIMzNPuN7Zy
         1hzTKxXSiENZAEHDiTSGhBZNNediWSlbGfW5L0Cxi3HgQK6VV70ewYH4pYwnqFaZiLNU
         +NDLmDFvx1gZdRT1ToPyY6+dwU1axGymnmppBcIFFkVdbOr0O4Tkl3JQBGGM9mDA5IQu
         kmMA==
X-Gm-Message-State: AOJu0YwNYW2BEqqJo0kdH5hKOchbiQgTT/ZazwyU49cB5dIvE6481pUb
	Cdc5cTo9Fbsti8VtZ3sAFb7eHCHCgF+XzXlcWFJD9AfG8oiopS6agbTrxfWkz/s1/YPCWa5RaeF
	0Ckri1g==
X-Google-Smtp-Source: AGHT+IE6p0GMUUUzwAVmd3gQWok3Ix3dlpRCzao1XEun/bXr9gF6Wiz+tTwABIE/7xbjGWzmolfp8g==
X-Received: by 2002:a17:907:d112:b0:a8a:3e34:1285 with SMTP id a640c23a62f3a-a8a3e341535mr39453166b.58.1725404057387;
        Tue, 03 Sep 2024 15:54:17 -0700 (PDT)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891964f0sm735447866b.136.2024.09.03.15.54.16
        for <keys@kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 15:54:16 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5c2d7ad97c6so249828a12.2
        for <keys@kernel.org>; Tue, 03 Sep 2024 15:54:16 -0700 (PDT)
X-Received: by 2002:a05:6402:1e89:b0:5a2:6e1c:91e9 with SMTP id
 4fb4d7f45d1cf-5c242350decmr8013411a12.7.1725404056074; Tue, 03 Sep 2024
 15:54:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 3 Sep 2024 15:53:59 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh1NszuHi0R6mxGnT7MsCaT+HtRiufTWpMspmFX-AFymQ@mail.gmail.com>
Message-ID: <CAHk-=wh1NszuHi0R6mxGnT7MsCaT+HtRiufTWpMspmFX-AFymQ@mail.gmail.com>
Subject: Yubikey trial
To: keys@kernel.org
Content-Type: multipart/mixed; boundary="000000000000db6bd106213eefd7"

--000000000000db6bd106213eefd7
Content-Type: text/plain; charset="UTF-8"

Ok, doing just one of the keys for now, just to see how it works...

                Linus

--000000000000db6bd106213eefd7
Content-Type: text/plain; charset="US-ASCII"; name="signed.asc"
Content-Disposition: attachment; filename="signed.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_m0n0zdfh0>
X-Attachment-Id: f_m0n0zdfh0

LS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQpIYXNoOiBTSEEyNTYKCnNrLXNzaC1l
ZDI1NTE5QG9wZW5zc2guY29tIEFBQUFHbk5yTFhOemFDMWxaREkxTlRFNVFHOXdaVzV6YzJndVky
OXRBQUFBSU1FM0ZJV2FTQ1JOYk9EUXBPeWVHVkpnb2VKb3lZOWJ1dGs1ZkxIMjE4Z2hBQUFBQkhO
emFEbz0gSG9tZSBZdWJpa2V5Ci0tLS0tQkVHSU4gUEdQIFNJR05BVFVSRS0tLS0tCgppUUV6QkFF
QkNBQWRGaUVFcTY4Unhsb3BjTEV3cStQRWViNCtRd0JCR0lZRkFtYlhrdDhBQ2drUWViNCtRd0JC
CkdJYUFaZ2dBZzJPVG5RRUZWdzBpWTRqMnZ5L1B6eG9nR3FYbElWQ09wajlUekFDaGhGM3pzOSsw
aHl1bm5Lei8KY2ptTUNyM2w0OFBtQnovcXdBdjhub29RQndOZFlxOC9VdHNWNE13NlVlVW40L21U
eXVrTEVldzc5NmJ3Y1FxTQozN3Z3cjJKOU0wWWRFUnZPU29vaDF3a0oyb2JKeVdET3JVWlJZbyt5
UWxaODV1VHVBUGFscVdmVzA5UkQ5Y1dOCm83aUVXTzlzWU1Pb2p6U1VjcWxiNUdKcjEyUnZ3ejZw
d0dTVTkwMmhhd25POE85SXFIZHRmNTNJU05waUhQR0YKaXNjV252M0w4clRLK2NSRUtGM0s0ekJx
Y2RCVE9GbzJXbU1KbC9pNC9SMjBtQk9oNFJpRWtoWGtCSDIxeHBFWApGQUZaRy9JQTE2MnNMNUd0
a2tHVS9NLzJyRXdkOFE9PQo9OUVHMQotLS0tLUVORCBQR1AgU0lHTkFUVVJFLS0tLS0K
--000000000000db6bd106213eefd7--
