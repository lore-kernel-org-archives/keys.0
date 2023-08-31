Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C33C19BB8
	for <keys@linux.kernel.org>; Thu, 31 Aug 2023 19:33:36 +0000 (UTC)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76ef27a8e4dso79389085a.1
        for <keys@linux.kernel.org>; Thu, 31 Aug 2023 12:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693510415; x=1694115215; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Uiq86nuhalP3qiSRl9vbbtIpam9Xe/LTXpNWsCweD8=;
        b=J+Wy+wbqu3vbjPGCPf00yyy2F2velLIbZtoe6e8VP9cuQttbXUX1LDRiyF/Uivk80s
         iB0SP/6gaWgURNZhXg+yjZi8TIzRxB8JCXOnCPPVh9QUZF+K3tnkr77YcD91nsOINLV1
         EEGfl/HO56mCYfottai9kIxFJzR5KZfhPcSRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693510415; x=1694115215;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Uiq86nuhalP3qiSRl9vbbtIpam9Xe/LTXpNWsCweD8=;
        b=jo31ciHYSpo4FiDma4q82qScunxTTqXaA/BzDkrwHd8wmQxBs0wph+6oj/DWQQMD6z
         0vCP5JsABRv0cXUnrG5EQDXnMsCMPN9Vg4OcnO/RwhF2v9eZrXs29Na8cWkyjLNQhPAw
         cgU0i6weTTjAGfli5jpOZ/L5SSDAfDd6cqTWspxumEIcIXMDKdeGjvHojwGw7OYxy4YA
         R42+YfGPGkuCFi5iA5Dt+5Cx7neBMt4jhYvMWtUXpc744pxZ8c7NuSDB/82w2cyYZPMB
         eU94df1zHrOw7jJ9/DSEaxIUywVLXX3yjRFQ+2uhha7JX18+0B2TWpyU5E8RULKQgNCz
         Adwg==
X-Gm-Message-State: AOJu0Ywq8CzO+AeXfXO12+yKyhYRK/iDRq8auEMgzDc+yxYpmetFBdvY
	9raENZH6PovlEe8SEnrM0ZVNlcD9cYTFctH3gkQ=
X-Google-Smtp-Source: AGHT+IFqT2CVdG5hW/qNTdlmWMwpj+jHPoz+irhTvxGrEmMMV/mZ3JQhNAU3j42DBo3m21c2xzdGrQ==
X-Received: by 2002:a05:620a:51da:b0:76f:1817:942b with SMTP id cx26-20020a05620a51da00b0076f1817942bmr377357qkb.28.1693510415735;
        Thu, 31 Aug 2023 12:33:35 -0700 (PDT)
Received: from nitro.local ([204.48.79.90])
        by smtp.gmail.com with ESMTPSA id y21-20020a37e315000000b0076827ce13f6sm844297qki.10.2023.08.31.12.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Aug 2023 12:33:35 -0700 (PDT)
Date: Thu, 31 Aug 2023 15:33:32 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Ira Weiny <ira.weiny@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: [ira.weiny@intel.com: Ira Weiny key for kernel.org keyring]
Message-ID: <20230831-frogs-guppy-artisan-ee7c20@meerkat>
References: <ZPCyBX6IOOspaolN@iweiny-mobl>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZPCyBX6IOOspaolN@iweiny-mobl>

On Thu, Aug 31, 2023 at 08:30:13AM -0700, Ira Weiny wrote:
> Please add my key to the kernel.org keyring.

Added, thanks.

-K
