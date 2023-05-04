Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9244C69
	for <keys@linux.kernel.org>; Thu,  4 May 2023 17:45:20 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-3ef3d90f773so3584651cf.2
        for <keys@linux.kernel.org>; Thu, 04 May 2023 10:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683222320; x=1685814320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=19rxM0kHgupQqqjqdTg3zWUMWuF9Zj58OI2/jESHhcg=;
        b=ZnI+3bPsCzukKaoSc13Wh0EFyQ/wFEfGgiHzFn7q1ST8qV56TDgTC8RNKDJxHxaaag
         rYtVwrQ3iHP/zr1Ai/e9yalyYCJiMWCyRduY7vd1XqtYvpTFxK/BNIY+tRwbbfkCoNUD
         XoKEgpVJJHEfv9Mkv1KB7ZAlGJ++nWCTl9lBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683222320; x=1685814320;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=19rxM0kHgupQqqjqdTg3zWUMWuF9Zj58OI2/jESHhcg=;
        b=c6Z9wSfj+uLZ4ukViqntlT0/bTJVM0xFC6jbnfkINYiOt9fqxqkHuzBDmJ4QlxT4e2
         Wd5JZBty1zWECJmkezm4opJp5OflV+P3VL43RMQa1eIsFve7cg+BchIZcwf05TsGXHBH
         LoMgNJBZQ+S0c0etBZ6unlhA2nYNsAvvWi9z84adwfgPpiIT2WMQENlv9UdrPXKYLlgV
         TxDYsXA0dHnw6X1SH2cc/Zz9BoYzMWXsBZp97E/9vWshqFeWoQ2wpznY8Ej14M+GA2Y8
         ucy9YImx/WZygcrz6AV9FGldtitsccRlBQv4Y8/W84MPsjxcfLfyi5Qcm93ST/P+p3KY
         ZmSA==
X-Gm-Message-State: AC+VfDwOZM5WCjNzWOl+hqLm6Set47RCPktCqj/GEf11PNKUmKDJzWwZ
	NWnQ6ix9Q+I1ELM7D+99cwpcI9Mf2b0nTZCIl3g=
X-Google-Smtp-Source: ACHHUZ7+iCNsC0cPQNSP87m4zeiFW6xaURLOmKaCBooMc+Nfb4WqZ8X5rtdFgBVZNHExU9P5ZDsjTw==
X-Received: by 2002:ac8:5a47:0:b0:3e8:1903:ab05 with SMTP id o7-20020ac85a47000000b003e81903ab05mr6576188qta.64.1683222319922;
        Thu, 04 May 2023 10:45:19 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id m17-20020ae9e011000000b00751517fd46esm4967419qkk.26.2023.05.04.10.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 10:45:19 -0700 (PDT)
Date: Thu, 4 May 2023 13:45:17 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Naveen N Rao <naveen@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New key for Naveen
Message-ID: <20230504-disparate-pound-171e98@meerkat>
References: <1683220013.z6ygyvjred.naveen@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1683220013.z6ygyvjred.naveen@kernel.org>

On Thu, May 04, 2023 at 10:38:51PM +0530, Naveen N Rao wrote:
> Greetings--
> Please find attached my new gpg key for inclusion in the kernel.org keyring.

You probably want to add your kernel.org identity to it. See docs here:
https://korg.docs.kernel.org/mail.html?highlight=wkd#adding-a-kernel-org-uid-to-your-pgp-key

-K
