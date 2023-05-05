Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C212C2EF
	for <keys@linux.kernel.org>; Fri,  5 May 2023 19:24:28 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-74da25049e0so184705985a.0
        for <keys@linux.kernel.org>; Fri, 05 May 2023 12:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683314667; x=1685906667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kHQmA9jX7OaUArHIwTk4pjX3HAeZUINoPXMSf6gnLTg=;
        b=hWiPiVCcOMfaZSamT6vJzElOSXD6lfhJBcZeJIibVjNQsGvFCuTZD67uDALy63/UJs
         7ezmqEOhGIPMr9gcOQsUJJS3xnMK7lkFf00J3xem95FxvBDXlcT+gyaZddBq+BuLYQoi
         aYwn/weV0F4A4v3+BQuOy1SwRQxF0O0HhDRXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683314667; x=1685906667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHQmA9jX7OaUArHIwTk4pjX3HAeZUINoPXMSf6gnLTg=;
        b=iAMR4qBVDvvQchbdRhuy3nBQPLV9ecJJoVN6P9yadMd3yjElPlHKG7wNit4bmlOLBv
         hHqh6Oa62mk11yGBaTvBTdUzJ23mWefLcsjVDnbHKe0qqV/5NfnuZEdD6y9Et8WxRk7f
         jX5+jSZtclgUTdMVHX6CuX3/kePvb8clOWc/OKCEzEtJBqm57Dl4LnepcENDPKdFvn8r
         YrRnVJVnMwcMksQQHipu9VsGTPfZUPH9hMMTDewhw6ucXCbf3CIhEJPDYZap+AzOWlxG
         Cc78wBBHSZHwGjHPGc6gz+a4zVQ7sGFs2x/LlfNAtVLKhLWgjRhIrbwREWYjezNnzRgs
         Wr5A==
X-Gm-Message-State: AC+VfDyfzRqL86IaZ0laZHhtA0IWQ93QtvEfIudIDnJMg9IzS56VL29+
	G55N5NFBrz8lQ11LtCVogPL+9w==
X-Google-Smtp-Source: ACHHUZ42CJPxNxoBR5pRNRnaAE7XlVyWmQcch7GSXtrSlcUADsRRGzYpCn25LQYHoXCqxeTiazXF8Q==
X-Received: by 2002:ac8:5745:0:b0:3f0:a755:61ef with SMTP id 5-20020ac85745000000b003f0a75561efmr4417169qtx.0.1683314667534;
        Fri, 05 May 2023 12:24:27 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id s13-20020a05622a018d00b003f20ec69b1asm861276qtw.17.2023.05.05.12.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 12:24:27 -0700 (PDT)
Date: Fri, 5 May 2023 15:24:25 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Naveen N Rao <naveen@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New key for Naveen
Message-ID: <20230505-evident-docile-42a716@meerkat>
References: <1683220013.z6ygyvjred.naveen@kernel.org>
 <20230504-disparate-pound-171e98@meerkat>
 <1683296622.ew5zlafus0.naveen@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1683296622.ew5zlafus0.naveen@kernel.org>

On Fri, May 05, 2023 at 07:59:30PM +0530, Naveen N Rao wrote:
> Thanks for the pointer. I have added my kernel.org UID, but have also made a
> few more updates to the key (attached). Please let me know if anything seems
> out of order.

Key updated, thanks.

-K
