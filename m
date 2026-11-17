Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794898568;
	b=2RMS1X0XyFIUOUFfUJlb7fhqxCf6OY0jlycEoremmIC3/g3ZBT+BVJ3qoJl+uhx0c1oO
	 +mBa/OzdE4Mq40TI4KusMnQaOWIgHjkXb6xIV2Vf4tRXcPc9MnlHvQiU/LONcQMptFpTx
	 +6w3gmOdp0MHbuf/KmKEqFdFTCtAHVECdpm6l9rTsHBJy6n5zKswgDY1+dtOu4yX0IzVD
	 PmrVQjZg7PedDD6vH/YpawwQHvH35odd1/eKMi/xY25SAEKX2TWXGslUTd3S+rgmP9JfG
	 amudp9b375jylho+SurKQp4CGRBM7x7WqujxfLfNdXxwGv3tt7NNx6oTSb7jMPselGg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794898568;
	h=Received:Delivered-To:Received:DMARC-Filter:DKIM-Signature:Received:
	 X-MC-Unique:X-Mimecast-MFC-AGG-ID:Received:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 X-Received:MIME-Version:References:In-Reply-To:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:X-Mimecast-Spam-Score:
	 X-Mimecast-MFC-PROC-ID:X-Mimecast-Originator:Content-Type;
	bh=Q6CUxfkMOOOclXDkBTox52gEpP9UbLjogolfjT+GSRQ=;
	b=gtoyykPI59AkriNK/dzsutRlaVZ1V87v+CUZJeJWkoFd+UKxH1yrHGQPGxj4dmE6PknO
	 YiohU50K2EfzKHWIm6uk2HDCWu4KN/efhfO55ylU7spJ3nVsVq3EnDfBL6+O48PWJ4IZi
	 OQyW2H6gTU07eIWc7kqe9B41SGNgjlKhTx4PYRsv42cfRWUXjfyvku1mizbDVys3wcREZ
	 fdcTiBz2waVhSEbVU6BBtMhFW6BD5y6RHGYn+8vCkuDyCV1WXMn62um8lQvN9euOrSzlu
	 3Tv9C46TNVTDCYOIaAFcqM3xUfjBJXvXF/rHuS5OtkUtbvfMZwxHgVFrwK1bOn6eTQA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=dVHyWves;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC4E606A31C
	for <keys@linux.kernel.org>; Tue, 17 Nov 2026 06:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=dVHyWves
Received: by smtp.kernel.org (Postfix)
	id D73081F000C8; Tue, 17 Nov 2026 06:56:07 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=170.10.133.124
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794898567;
	b=V0sZw8oTDwVob1w1zc6J/bYBRFmAJb9lyi3gUeC3RNmlxICimArm2BjRvPhkGjkjPh00
	 0oIkoNPZQYZ2gTd9xDmV2pqEansViiVKWwU0y/KyXXDPZkgRViIbzTnqoHshstm8BIsL5
	 4vCL5nq/x8Olp0bHDzPyRS4+1qpuaAF5Pfx7xP+rj/9wzPgxNeT+/ijiThbzC+YijwK3y
	 xZW/k0vWk3lJ2uiyDt29Oh5A8nvgtpnPMu5sG5XamoWvmq9upq+9sW3EM/j3zHMKdQ5Pb
	 lt8xW/t+LA5SycNKAC0yqPM8dZyjtNufxmKhBpXxCPsyjDibwZH/9PCP7Z33Kz4xSxw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794898567;
	h=DMARC-Filter:DKIM-Signature:Received:X-MC-Unique:
	 X-Mimecast-MFC-AGG-ID:Received:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 X-Received:MIME-Version:References:In-Reply-To:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:X-Mimecast-Spam-Score:
	 X-Mimecast-MFC-PROC-ID:X-Mimecast-Originator:Content-Type;
	bh=Q6CUxfkMOOOclXDkBTox52gEpP9UbLjogolfjT+GSRQ=;
	b=njHc3xEm1MBCfeUGvifktSscYqVnOk7X7PlYIBAFhFI9tiAHq9qHq3dJT3idoNvIjd2P
	 X/VdNWDoghQjN6WObPdCZyKAA5riq4IP2Erkvr0EKIAsVAOXfVMYqaY05xZg70PMZ0Glg
	 OvYSBCyMO9xKJHpAUsyzdo1WRsXAjdwq5HxHM7PEypPxZlWqPCWJUp/ALXgIsd/Gqu/XH
	 uh8YaQd3M1Ux6yF/WMddQ4XW6i89oSiGgNc32QPTPrHg5piU6/SS4POn+HuEbfXe80TUP
	 kiL62kMtzGJto+H0nuc0e4OrJCOAvuj3o1wyAwupt4Obp+iyGgm70jUxf6pU1VOFqAw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=dVHyWves;
	dmarc=pass header.from=redhat.com;
	spf=pass smtp.mailfrom=redhat.com;
	arc=none smtp.remote-ip=170.10.133.124
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 893311F000C4
	for <keys@kernel.org>; Tue, 17 Nov 2026 06:56:06 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256 header.s=mimecast20190719 header.b=dVHyWves
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 893311F000C4
Authentication-Results: smtp.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1794898565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Q6CUxfkMOOOclXDkBTox52gEpP9UbLjogolfjT+GSRQ=;
	b=dVHyWvesB1GVE26cYqrSUIa5MZuM0QqvbBmFcS9x1QahoFNnCDs50GlFsq0SMySJ8+TA2h
	a1grNlra50xoB8Gq8rbXKDD3qR8c8O0vCQ0bzsej/L3I4GX0Mru9982qeFPFCR3P7KGIh8
	z5VcGPpPKcNDZ73gyrEd7pNUx+dPhYk=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-124-Ae9Q2u2UONSi8WQnIhNyLw-1; Tue, 17 Nov 2026 01:56:03 -0500
X-MC-Unique: Ae9Q2u2UONSi8WQnIhNyLw-1
X-Mimecast-MFC-AGG-ID: Ae9Q2u2UONSi8WQnIhNyLw_1794898562
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-c4d34d6082fso376296566b.0
        for <keys@kernel.org>; Mon, 16 Nov 2026 22:56:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794898562; x=1795503362;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Q6CUxfkMOOOclXDkBTox52gEpP9UbLjogolfjT+GSRQ=;
        b=qskbJ6rCcu+I5bHU+FCNTHplTbGMnuyAPB0Au7UG9zVpF9I9GAmpjzuN9+lRHclpzH
         USYGEaS7FSym4OBjeJoqVhTbJobtoUMJ9gEns0WRmEky/h3XfXWwbIb7o9o2jfulqojf
         AJx1eAqw1rFP44eg5LaXP8U3UaNmkPMVAratrtf2lhpy9SWxLy1Em0KoI14+gRzcGibw
         PSGK8H07eKXesHkEUA4FwVkOuf4fccx7cawMM1oAokC8iiEn9dJmuNroKhq84jLzGovM
         hLxJlFNgWkAiOoSuqoE1V8MXozGQ68aNjicBECy/BQ6KuFqmbkFuQ6kWWjYIqvrmVa3I
         1qmw==
X-Forwarded-Encrypted: i=1; AL+hErEiw4dWZYwfICYq3NNYMtMNm6IVUd12kKf5KT5IWEnqDawcZZcYKNfWkYhTTYU+NDEYBlbP@kernel.org
X-Gm-Message-State: APuU4Z8DKVMVsmh5p1o068CEf48RfB6aQ5U50N9RmTelRcrIqxStcTcw
	lMlCj45rjDe9s9SxK6XY3G7zRBoj6yEuhEqmEimszk9W6wsBbXWU468OpYpFShWHg31Lay+ZvK2
	oTnU/wz7A351EIdMmbdkKiSqs7rFi3JFpGWJJZf4rzmvGMIga7U4uyJiP4U4lwFuaswirNO/Zfd
	9jOCgYxypKZLZp02RzLz4WFcE=
X-Gm-Gg: AYBFou0K14Nn2ds50vDdDDWLfkCEpzvkEzoY0z+1NzUf3caH4kXa1oo4DljeXDtkuhz
	JzW2qjajUJAJ/l14j/yJ/k/sCw04CATDsmpWQVjwlH81MRwwEjhvO8t+CkyDRINsljMKofvInyx
	vM2S8Sfwc3nMKa1LdrjicXEvigjb3hU7TAiJTUwXPwPe+bJpy0pbhnE9By
X-Received: by 2002:a17:907:ea91:b0:c4d:2cb4:7bbd with SMTP id a640c23a62f3a-c50963fae13mr1096325666b.47.1794898562357;
        Mon, 16 Nov 2026 22:56:02 -0800 (PST)
X-Received: by 2002:a17:907:ea91:b0:c4d:2cb4:7bbd with SMTP id
 a640c23a62f3a-c50963fae13mr1096324566b.47.1794898561888; Mon, 16 Nov 2026
 22:56:01 -0800 (PST)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <avcPLMVwvkWUEpJe@phoenix2> <20261116-imaginary-coyote-of-chemistry-cfafb5@toolbx>
In-Reply-To: <20261116-imaginary-coyote-of-chemistry-cfafb5@toolbx>
From: Juri Lelli <juri.lelli@redhat.com>
Date: Tue, 17 Nov 2026 07:55:50 +0100
X-Gm-Features: AclHuK-ASI8GCbBkB-JaAcJWJNEAtzOC7zz-c8VHM8bBEcnic8wEg1_xocL6OMQ
Message-ID: <CAFj23BhH684WaDF6ptv1Bz8n7B6w-PN_MP7oj8RA9krQ_5LNeg@mail.gmail.com>
Subject: Re: New key
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, keys@kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: z3wlfXWSdz1SAUHI1iCigFVQwr0XCHsROOHW9mN8_eI_1794898562
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="00000000000030b8d10660736348"

--00000000000030b8d10660736348
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Konstantin,

On Mon, Nov 16, 2026 at 5:28=E2=80=AFPM Konstantin Ryabitsev <mricon@kernel=
.org> wrote:
>
> On Fri, Nov 13, 2026 at 10:22:52AM -0300, Arnaldo Carvalho de Melo wrote:
> > Hi,
> >
> >       Here is my new key, with an expiry date, signed by my previous
> > one and by Juri Lelli.
>
> I've added your key, but Juri's signature doesn't match the key we have o=
n
> file, so it's been discarded. The key we have on file for him is
> BA2A558FF4ED722E and your key is signed with 1AD68C9C6DD9111F. If it's a =
new
> key, he'll need to send it in.
>
> -K
>

Correct, this is a new key. I've revoked my old one (BA2A558FF4ED722E)
because I've lost access to it.

Please find attached the new key.

Fingerprint: 796E A1B3 BEB3 EF8A 6ECA  2951 1AD6 8C9C 6DD9 111F
Key ID: 1AD68C9C6DD9111F

It's been signed by Clark Williams, Luis Claudio R. Goncalves, and
Arnaldo (as you've seen). Public key attached.

Let me know if you need anything else to verify.

Thanks,
Juri

--00000000000030b8d10660736348
Content-Type: text/plain; charset="US-ASCII"; name="juri-lelli-pubkey-2026.asc"
Content-Disposition: attachment; filename="juri-lelli-pubkey-2026.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_mwkc7t5g0>
X-Attachment-Id: f_mwkc7t5g0

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FYXN5b21SWUpLd1lCQkFI
YVJ3OEJBUWRBVFZKL2tmRnNBYXlNa1BnWmFTL2k1WDQ3d2p2czRudlhKMEJ1CmsyOFIwVzYwSVVw
MWNta2dUR1ZzYkdrZ1BHcDFjbWt1YkdWc2JHbEFaMjFoYVd3dVkyOXRQb2laQkJNV0NnQkIKRmlF
RWVXNmhzNzZ6NzRwdXlpbFJHdGFNbkczWkVSOEZBbXJNcUprQ0d3TUZDUVBDWndBRkN3a0lCd0lD
SWdJRwpGUW9KQ0FzQ0JCWUNBd0VDSGdjQ0Y0QUFDZ2tRR3RhTW5HM1pFUjgxbHdEL2YrNHF3L3Y4
MXdlTHFLOW9hZkR3CkxpQlA5cE5SQ1BkaEhudmlScXJUcDJVQS9pRlduQkFnakFMaVZxVkRDZ25X
YkRHNlhSV3daRURuTkVOYnMxNW0KcEg0SWlRSXpCQkFCQ0FBZEZpRUVGa01zcGpPZXFqbVFxN3p2
cy9yNVlUQURsaHdGQW1yUG9rc0FDZ2tRcy9yNQpZVEFEbGh6UW53Ly9VZmJNOE5UdzdBbk9BTytq
YTQzaThiVXFyQ1paVll4cllOSTVsQlozM05KQ0UxVjkxTFg0CjZuV3Q0cWdHOGFOREJEUGloaDF0
RHlwaGprNjR4RFdPRnYrS1JCL1U4YUZ6eTk4S2twQ053Q29tZG1lUFI3Z1YKTUdqb1FTa3BYT0k1
Q1g4djVQeUxDamtpb0ZwdkJjdjMwdVVLZkk4NC9WVW5aT0x2VHA0L3hVUHFobUVSQlNtdwowbGox
Y0w5c0NDd3d2Z05EYUdIRzBNWkY3cjRNMXZzSUhjYzZvTDFwcU5JRW10YkY5M2hzWVMydmsySlZ0
R2pnCkQza2I2OHk0TkR5Q0c2d0RTSDFlSTY0MElENUxBdllDNVNJTldNUEI1dnN1QmZYcHBQOXVK
cGxFKzhvc01KbXUKV0tCY2plZ0dhK2NhYmtvaTRxK0VUbHI2VVhqQmtoSXdXMjM3MUxRaGN6ZGov
WkhDNjhTZXk1TVgxbTFKOFUxego3ZG5LcFd2SWlEVEtNSGphMkNZWitXZk8rWVFnUmdvUjN0UCtY
Y2MzQTgyMjNqZStVTTZ0d0RlNldJTGliZzFBCk4wRkhySXY2WXUzNndjaUc4OGZVemtiSUlnbS85
UmVlYTFuUExSU0ZCak1MakZLRkJhK1lUejI2SFRqdHJEa0QKbDB3WFEybHJLL2dKbys4eFlwenFk
WWx3MmFmSjdDdW50cTJxR3loUmNRcUtBTVY3di9haU9GOEMxb1h2M0dZRwpYSkJtT2VPRVNNSitC
dDhqMzVEVjNyTVBZSEtoaDNDYVMzeEpSRXFZcklaLytnOG1oVlc5cWhVaXZFL3lWRHNXCmdBZ00x
YnM3WDcxcndpOUhWSTJGWkZYd0ZGT3dQOFRtSFBkN2pGbUhOZXVuci9FdlEvWG5zdHVKQWpNRUVB
RUkKQUIwV0lRVFZaVDZqbklaMTJrdlZseHdUdFYzUWZGTzRVUVVDYXMraVRnQUtDUkFUdFYzUWZG
TzRVWk1KRC85ago5VFdraUxSeXU2MzBDR3Qwb2t3RUtXcmRVUEVzQzZ6S3EvWWp2ZGdYbTF5VnVL
bnB2TzAzY2ZhOVlRSUlpa2FLCjNMN2E5ME9YUDdLSFRaTmo2T2krL2RSbG80cWJrd2R6V3Z4ckxm
YmdoTWR0K3B5RkMycXZuWmVrZTZvSlhKWXcKRUR3alhNRVdtR2doLzVqRW9PeElyVHFzNm81ZUxL
NXFOSmVwNnlZVHNwVG01OVY1cmtzZkttK1ZqUXBpaFVGOQo2dUVlRlRUMDUxU3dTdGdTWWtONlBl
VW5hcGdPQ0pPYlFLdG90YUQreHo2N1dtUUg1dE10ZWRzVWVTQi92RDZXCnNveEVGV2h6WXZDWUFo
YytxZHh6aVBMbGJ3TmhIYTZvVW1kdm8zWjZCS2tCbktrV1hHQk1TcWsvUVRTVExjUlQKbUhxbmZW
MnA2N0Fpc2Y2dU5XdnBiRm5MQTZtOVdnRXZEbjlUSlg2TUVUNVpIQ0dhVTlwYkZvWFZUZnN1RUVy
bAp0MDIzbzlKbnMwaHFsd25XaXZFK3pzeUJmaklKN2JzYlY5aURQMFJlSm45N2FVZE1tUXMxL2FT
YU5wM1hrWWplCjEwYi84ZUdqeUJySlFxZTFRSzVCdlFSOXlsLzRSTFZmeS9tWTdLRHNSSjJFMGVJ
NjJ2RDVmQlQ1S0djZHFBVFEKVEFpOTF1THA4b01PNnVpajZyRFIwZE9UVGpQWVp3T0k2NnlGUDg3
c0g1L0NBNlgxTVZ1ME9WMFk2RG1yWnpXRApsOEQrMDlFSm5ORHM5Umx2S01DZ0RLeHlyKytHOXgy
L3RnK2NjM1dRbEtNUEEyYVFWM1d1dVc3UFFRS2FHeUtWCnVXR1NNbXMzY1lGTnpuTHZPZGhUbC9V
TXhYdzk0c2FiVCt4aXcyaGs5SWtDTXdRUUFRb0FIUlloQkpOVUJrbVoKY28weDFHVFJRUE9VcENQ
NDVud21CUUpxMGlDbEFBb0pFUE9VcENQNDVud21CUUlQLzBMOXQxQUVSR0VMdnNnTQo0WHBoVm9h
S2RtaDhiejhEb2c0VUIwZTFXUWIxQkEydlFWc1NPZDJGbWtwbVhDQnk4MUZ4VkR5cnkwM25hR0tP
CmZIcmU3UStGQ0FETmZQcldXd215NURLNGU5VitqY2hwdWFMRi9NQW9XN284VVAzRWlET0Y3Y1pn
OGl0WVdhMDQKQ3lBdDlwUDU1aUdJNm5ldmdXZytBazg2ZWJlNzNBVUNOUW1vYWFEY05QaHYwRExq
RU5kS0l0NTZ0TysrWWxqLwpaQVdpTjFoRUFNUXZObnlwUHY4aTU0Zy9WZzR6bGNpektiTm1pNVp5
K1J0bGtCOFc5SUpoRlFRZUJxdHVjZ2pPCmQ4enBpN3B6dnA1M2ZwOTdReDhlTVlMRDJJbFhFbkYr
V3lxMnpOcVZ0V0dCVjdOTmc3aGFrOXpNQ2dQZ3VTMzQKdGh1M2dWUHlzc2hYTlNFZDM1Z2E5T2Fl
d3NXUTh5Y2g0NlBJS3QraTV0SnoxSVgwK1RLakpJaFJPMWtUd2lSbApIV3FaRVVsK3JqbXBJWTdv
OG1LUXBvNk5hcVdxb2RiWitLd05TTUh6cnhlREl5UURtV0lrNlBkOFRwTzVaL2E4Cjdrem02dEta
R2k1cDNCVGJaVkErWUNoQStnKzQyYkM3UkxMN0w3Ulgza21SQS9Ca2oxWGFybUhVeWxqSUppd3gK
eUNiS2RoTzExbFN2Z0VmZVdzY2E5bW9YZW5EKy9LL0MzcGxWTk82dmRoQm8yVVVsMXpON1FMMSsv
ZE04S2kvQQpFVTZRbmNjT3RRUmVrRXFDMVg2czlQN3RGMUw5OExkZXljam5BUU15dmJCMzV3SU9T
RThMZUpaMlF2Q3JoWTNqClZlRnBPL0ZoUi85azBHMDhnWDhOSlF0ZU41cHRpSFVFRUJZS0FCMFdJ
UVNVVmRHMTZVSE5mUnY4WGtaRHRKM0gKZEJZMWNBVUNhdGU0OVFBS0NSQkR0SjNIZEJZMWNON0FB
UURrcDQ5RjZWbDNQSnFIaXpCWHMwbllXR1doUy96YQpURHgrNDNDY0FDOTlzQUQrUEVHTkF4bk40
MldXVmJmQVg4Vi9EVWlrNzVkdUFpV3ZRQlp6cTN1QzNRU0pBak1FCkVBRUtBQjBXSVFRdHYxdXFS
dnRON1RPS00xdldVQmJ6VTFLcVFBVUNhdGU2d0FBS0NSRFdVQmJ6VTFLcVFEWWYKRUFDVGlzd0pP
dWJ4eWxxODVia3JxUTVVdm9CTXltcUJzOTdEQVgxa2Fsbm5lc0tVbWxyWWNUY3hEc1V2eS9LRwpv
VTdMS0JJM3B2Sm9nQWp2T3BNaTVUa1loT0lwSHZaaHdFNFBFVFB0L2VxSU9mVSs4S0pMN3JNQkhy
aHgrdkRhCmxWZ0FLem5paHlxdk8yUnF5Rnh2dDRsVEZHS2VMMGViWWdwMUdUY0tINjJVLzRJNHJ5
MVlVQzdCcHZ3OXVEY2kKMXBGcy8za3FINjhUWTNTUmZIbnlJOXFnQkE3ejBxR1lvRGtxVzB6ejlW
U3pnZVdlRE9yL3JkRVhIY3p6cC96NApwU2g4MjRTU3dkMnBzK2orZkVIZHJVdlYxWWxERlZLUzBx
dmkvVXVqRENnMVNnRmlXYnV6Z0tPbDI5TG1ycDlICmdqNktVSmxDYjhnbmREdTNORHMwTHNLM05L
ejhDQ1F2RUhwVG9QNDhrRnU4SEtWWkJUZSsvS0lLaTZLZWFBUTkKQitEYkNhS0pwanp6WFdvQnV6
cGdTVlo1QTArNFlIOWRjc0g1V0t3UGZ2Wm96MFRtWit2bVdiUCtLWjl4MVVqagphODhWSnVSb2tG
K0JaZVBkemozaXJVa2NxckttcElXTEt6S0Ewb3RQUVR3ZktzMHRtc014NFduUUFuOWVaVkM2Cktt
ZjBxbGdQT29wenFlaDFuU0lIWFZaMWQxSzdXUjUvNEtCMTBLVVFxNlhubVAybzhocGtueTF4SGFI
RHArM2sKWXZSZ1BycUQ1WkpOcGo1YnFmenVPZ2t2Vkw0b0tQOUVUK1ZjZHZiaEpKYmRhbm5CM2c4
M1FWK3Jpb0MvYy9qQQo1aXlKWFZhWVdyTDM5VDVTeUxYYlo1cnV3dncxTmRUcjZySldlbjhQbmZw
TStyUWlTblZ5YVNCTVpXeHNhU0E4CmFuVnlhUzVzWld4c2FVQnlaV1JvWVhRdVkyOXRQb2laQkJN
V0NnQkJGaUVFZVc2aHM3Nno3NHB1eWlsUkd0YU0KbkczWkVSOEZBbXJNcXFnQ0d3TUZDUVBDWndB
RkN3a0lCd0lDSWdJR0ZRb0pDQXNDQkJZQ0F3RUNIZ2NDRjRBQQpDZ2tRR3RhTW5HM1pFUitFZ1FF
QTBIbktLQTZVZWMwdFhOM2p4enBnREVyQ1dQbG01KzgvWkhZUG50OUlzQWtCCkFNZTZ2MmpYR2pp
bytJd3A4WFdEOGFUV3ZOYjY4U1Zhei9MbTFWV2tmbGdIaVFJekJCQUJDQUFkRmlFRUZrTXMKcGpP
ZXFqbVFxN3p2cy9yNVlUQURsaHdGQW1yUG9rc0FDZ2tRcy9yNVlUQURsaHpzU3cvL1g2NStuVStQ
Zld3TQpDTCs1c3ZERThkcmU2MGxoSUdQSHRTSzRlNDlwNjNYNDVWV3ZaUFZLZVlaZUpuMkFLRlMr
ckVzakZnRFFPZHY4CkdaVGlvU0s1eloxZTJhN3RsRDhoWTdmSHc0YTM3WmRiZ2hDWUgzRnFvS0pO
TjBDb0FtNENxMXlDWms0NndBMnQKV2NIRStTWnlJdXppbmpwYXZQY0crQ3lYM2RTam9kNUYwc1FK
S3JvMm43M0VVOGN1akczZVRiOXFqNHdlY2hodwpteFY3TndqdDdIdCsyWE9HZ3JIaUh6Z2dFK3g4
RktwMUZiU2IxcExKQ0p6TGpsRjNIazdtcVlxWmppVm9QdjBMCkFnVlMyZ2lHamo4dkJIS1lxS09K
bU9NdXhkYVV3ZHhYNE03UUgycFRQRU9BanJoTEF3eUpqS2NuenBnc0dHanMKWUZoM1FiOWtORXVa
aWcvdFkzRkIzUStWSFI0SUpFdUYvK3RaSmdvMGRseXg0c0htaEZ6b0VpRTFHNng4eWVlbQowNlZz
dHZMaUU2enRvNUIyKzJQWHR4R2Z6cnhSZFF1S1dqeGlHb25MSXBsSHo4SWNaeTYzdUxkMHdNWWlo
d0ZRCkMrVkVGL1lOOFU2dVdRQ3A1S1lzZFY1dXR3KzNmR25YQzRFcmdNdThKM1ArOWVua3lWZnhx
NTQ4WnBSaHJrc28KYW1iUzgvV3NBNTNxNjRERVRVRnl3MkZUdmt3QURLamkvRE1WVWp5MkIvQzNh
Y0ZYNzlyRytMZ2NOc0hmYUdzaAoxbHpkVTlVMWFRekF1MjVRcit3VGtRR3pwVzM2cThTejBjc2V5
U0M0bCs4bFkxQXBPOEJNT0NlTit3ZUpETVVGCjFJV2Mxakl2NldHYUYxcnZSUEh3SWhOeElPc3hF
QUNKQWpNRUVBRUlBQjBXSVFUVlpUNmpuSVoxMmt2Vmx4d1QKdFYzUWZGTzRVUVVDYXMraVRRQUtD
UkFUdFYzUWZGTzRVZU9aRC85NnBHT0hCT0hOQ29neENmdmRCMVdDc2V4Ugo0alJmeVVuM1ZYSTFz
bjdpTis3U1Y3Wk5FT0Exd2wrVFMrOThBNWxwZ1hwbzhxaFJyL1BlZ1NmbUsrbFZ5SEJqCk5MVld5
YnJ0YnZLcFRzSWVzRzMxMFQ4YlJGS1ViaXQ2THFRVEMvUDNGMmczeFU5Q2lEOC9tWkVHblBFUVhO
SW4KLzcyZWlsOGNUclY2eW5GSmh4bVNRc3J0eUp5dzRnZXZVMFBtTnBzVmNueWJUU3VuYkFnLzk1
TWZTZWJDVEd4Lwo4Z2dNanFyVUpsRGZxVTBZbUc0WEFvVUMvVldoT3VBcXdNQklFVlY2aGdHbWNr
Z09sNGhmMFU2RWxmSmZja0h5CjBaUERidXFWSU84elE4RHJsMDd6N2JiTU1hOEdxZXRXMWM0NVUv
Wnd5TnNvZEVXQ1hSWGN3UFZhUG1HZW1MTjIKZW5UT1ZDSHh1bmoxZjM4c3NLdzVmd1ZvclZ4TXFZ
QkdNT1MzUlRuN1hEYk1hd1ltemtrbWdxdzRFaTRzWi9aZgp2QUhBRVFIcWczZWFiV1JYbktLMjl1
SklESExQRVNFZXNod2RoL05HejhYUmk0eUMvYSt1YjRMRG83T3kxcENCClRmenBjRWsxRkFLNHQ0
YmhCclh0TW5uTmhVWFlTUisrWmF2Rm5yRzR3N3hUZktNSVY5QVk2V2Z6SUNxZFZvc3oKa2UxREVB
VjZEQkNMUHllOEJJVlhRNERHVFhDSmZLMjFVS0h6Y1p3bjRzSWIyeXZjSnh5Vlh4eFpENWxXa3Bt
TwpNOUsrbzdrTDg3UnVJUGt5MzNaRXFTeXRVVWxQMzFvZVprVWJnUnpEM0pRcnlLZHZZOTVzSW5G
V285b3JmUURlCms4NEdrdVJoN01PLzBtdmR3WWtDTXdRUUFRb0FIUlloQkpOVUJrbVpjbzB4MUdU
UlFQT1VwQ1A0NW53bUJRSnEKMGlDUkFBb0pFUE9VcENQNDVud202c2NQLzNFZlJ2Rmc2U1BHdmJ3
WDhKNDAxSjFOZWprSFJpZWJqZXBPRzFiWQp3ZExnQ2Q4YWRlN0hCUlk1NTlCdDJrRW9FWDJKR1Jt
cHp5dDVVbi82QzZiQkZGWHJKMnZzNFI0OFEwR2pGVk9LCk1SU2VDeXgwMXpqK3RrOERPWkRkbVlK
S2tKV1hBNWJHVW1icU43eDkvYzlUZm15UEhFRkRwR3FIcHVRTlJhbjcKS29LU0dJRE1wd3FiRWg1
ZGpnVWI4T1pzcStDKzFlYXlVZ0s1WWV2UlFXS0lXVlFGQVBFWHc5NWhka3lDQ2FMQQphZnFlT3l4
cVJmZ2pId2dFMWxEcTZnTnI3WEYyY0VQZ1lrRXdwV3JEWHhIb3dqbDNsQ0MrR3NMVmU1aTRHeXlv
CmU0V3FadmpQL3Z5SDdsQlRmbDd3Rk0rR2YvS3VlMkRaMzhMOE1jQitNVDhUaUlrZDR3aXE3U1Ju
dWVoYXhIZU0KTnYzZ3BpVXc0Y0w0N2dqOXJNQjEzYlRLRUVYK2RHUlBlYktGcDlnMFNtSmpteGdo
K3N1UEFsN1ZnYnZUK0lzQgpFeXpTMXRqSFVpZjRKem9hSlM2VDhVSHN3ekY5SnFCamVNNjRDcWRL
WlQwMjBhZUw1b09LQlNWT1dTaXl2TzVzCmZ0VTljcnEzTW5wUXpIQVNHdFBhMVNMZXpPc2lqUm9O
Qzl5dmNoSUpQcVJJTGJucVNldndFMVJIMFZjT1lraGQKYzdYMmdoanNSOEltLy83d3kxOHlaZ0Fk
Ky8xTDl1T0M1SG5GYW9RYmdGUHdJa1VKMmZLTnE1OGdYQzVGclRWaQpzOTQyUURiUjhQYVRNVFdN
MS80VVd3MFpsYWgya3JhUVJ5S2JyUFAxUTluZW5mcXl1UEliUFlEV243TjU2VGdxCjFza3NpSFVF
RUJZS0FCMFdJUVNVVmRHMTZVSE5mUnY4WGtaRHRKM0hkQlkxY0FVQ2F0ZTR5QUFLQ1JCRHRKM0gK
ZEJZMWNFVWVBUDBaV29IQUNISDhMdGpzcEV6K3k5NUVuUG95NWh1bVVDOThuNXowSFlaTmFBRC9k
MEdJc1VYSwpTN21ad0FKNlJranZqZkJXL0diM2xyRW15S3VLK0dkZTR3dUpBak1FRUFFS0FCMFdJ
UVF0djF1cVJ2dE43VE9LCk0xdldVQmJ6VTFLcVFBVUNhdGU2d0FBS0NSRFdVQmJ6VTFLcVFCaWlF
QUN5VTNWVTUrZ3k0K3NFeHlxTlF1OHgKZ1hCOElqNGgwanc4VFNIK3pXTGY2ZmxFQWgzKzFKN3NX
ZlcrY2dDeUsxV0MzMThYTHZxdGE2bUs5RTJVVkc0ZQpOem13ZzFzMDdWSkJnbHhRTHRHYVJQUUZE
QVRaeUJsMnlVUWxhTGxUVmdlUVZwQVpJd1pRYkJ4ajJvVmhTZFVGCmtFM21zUDJQUzVQanpHbVBo
ZnB1MDIwelFQUkdIK0NST0NoZTBEM3dYd3JBV3gzdENmUlpNRHlnSTU1VXUvVUUKZ2VaYW5YMGtj
TFFKLzVOam1aTVR0bHdMM1pzNDg5QVFxUU11QnNCVnNzUk93a3YwNERnT05GTFFHdloxRHd3WQo3
b1kwYWpSV1lSWXg1OVo0NjYwTm5FNTY4NUpLazRueVVjTU9jWjhrM2JtUk1XTmxZZlJISDN6aHh1
anBPdDFVCnI4WFVnYk9wNHlMZjdEMUlYb0VLMHdncHVxTmp3QzY5RDNrVjhQV0V5Z2FBRzZSQ0N3
bnZJSjBqWkI2cVNTTEYKeVQxS3NDbTNsU1RnYWhaWFlNY2Nwa3R3QllQRkd5S21yeldZTHE1bEp1
YjJhWmlqOFcyK1NIV0FHbmg4RFVxcgovcWtVa25SQW80MStKTnJIUThQM1pHLy9NSElvTGhLSmZh
T3VVMWlwMWh6OTZrSkRTK092TldsajZ3clo5VmRiCnViZ090UGhnKzBSMEs2NHFoN1Q4TGxtclBJ
NitUc3NSbU55eWpDcTQ0eUc4ZXc1V25jMDRid2dZQTBIZjl0UlEKM2hTQWRPalRFMVRZbTJSZzdG
Y3EvTUdWZGZ2YVVMQzhQME5USFd0bGJhejVwZEZLczNRcHoyMU1OdWZKMTgrVwpUYlRUZVB3YXQ5
M1RjL3B4M0dCUURyZzRCR3JNcUprU0Npc0dBUVFCbDFVQkJRRUJCMEErTHVUdFk5Qzk2VVpkCnls
VmFHSktJVThvQnFnZFdqaWh4cXlRQ0sybnBVZ01CQ0FlSWZnUVlGZ29BSmhZaEJIbHVvYk8rcysr
S2Jzb3AKVVJyV2pKeHQyUkVmQlFKcXpLaVpBaHNNQlFrRHdtY0FBQW9KRUJyV2pKeHQyUkVmbjFV
QS8wdTdPRXdERmh6UAo2OHJTRjdkdzk2ZnJNVU5RL0lCVHB5Z1VXK01kUGRNc0FRQ0FaQm5YVmR4
L3JsanNOenFFLzA2QTVtWjZIeDBqCk5vb3RRK2ZubFRIM0RnPT0KPUtNWWUKLS0tLS1FTkQgUEdQ
IFBVQkxJQyBLRVkgQkxPQ0stLS0tLQo=
--00000000000030b8d10660736348--

