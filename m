Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1677317C8
	for <keys@linux.kernel.org>; Tue,  5 Apr 2022 19:31:53 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id o15so487572qtv.8
        for <keys@linux.kernel.org>; Tue, 05 Apr 2022 12:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=QVW3pc8hvOg/D8eZB8ArdiySyFur9iwbBszufAM6Qi0=;
        b=Y27M+erKE8gmuzxcIZticvSIXXf/Y7dUWq2QH7qGGmFLo0pTIhQ2Q9kwrCTMS4u64v
         Sn9XAXbXHdXhXtH7jORjFXRlMERIfFfriWoFFflflqfpQfFXcD4dAXcT780HlTlRDTKT
         RH82hglE4t9wy/rceGrmkWRFUYAgvwSCRXCIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QVW3pc8hvOg/D8eZB8ArdiySyFur9iwbBszufAM6Qi0=;
        b=Q8aoADE09HqLRNyc/vFtawR3e1KkmjM8TYyu8SNOJDVqz5kInfa3bmG+nzmqnek+2y
         SYELDY7XHLhwEBvOJVtJByrgbaG1ZKPuGijO/dFlfZv1OK/fKjL5kLFKpHwWlqwxupYw
         x/TfpARINguO6AcqRRB/40Ih1nHNvJuBO2oqZI6k5Xuu/i4Nj/ztkGd3m05FVT1rNPFK
         /GOYmXK30C52oSqjO+jqRWIjsOjDRewZCmM8LlSXVsDvdj49ExUpWrU9QCdlAEoDWiKC
         Na83HgO1FR8Av1K4rTmIwm5BiNrKIXyxSsn0yzCsSRRY8HbKqnpyFCZPcxiXuXjSeGDb
         gWNg==
X-Gm-Message-State: AOAM5339QzWzt9ehrVUhu3hEJtfZbLmva2/PbSF/Wh5GcwpqthmgcweB
	fk2hHPF1FAzNLyWQ7zEd1elhjl/5jq8hcbUOnEw=
X-Google-Smtp-Source: ABdhPJwwa7116D3rwNj8ev9YlTT5glnH8Oexktpopb3rDlM2o6/PIN7A2BUe/RNpgqD39g3fkex+fQ==
X-Received: by 2002:a37:9ecb:0:b0:67b:73e7:2c05 with SMTP id h194-20020a379ecb000000b0067b73e72c05mr3307967qke.381.1649187112945;
        Tue, 05 Apr 2022 12:31:52 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id m6-20020a05622a118600b002ebb68c31d5sm4604164qtk.45.2022.04.05.12.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Apr 2022 12:31:52 -0700 (PDT)
Date: Tue, 5 Apr 2022 15:31:50 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: New signing subkey for Dmitry Torokhov
Message-ID: <20220405193150.i5egb5z6faha7ibp@meerkat.local>
References: <YkyUHlU+/S7UKcWB@google.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YkyUHlU+/S7UKcWB@google.com>

On Tue, Apr 05, 2022 at 12:10:22PM -0700, Dmitry Torokhov wrote:
> Hi,
> 
> This adds my new signing subkey (but note that I am not revoking the old
> signing subkey, it is still valid).

Updated, thanks.

-K
