Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13DB11706
	for <keys@linux.kernel.org>; Mon, 11 Sep 2023 14:53:09 +0000 (UTC)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-579de633419so44852717b3.3
        for <keys@linux.kernel.org>; Mon, 11 Sep 2023 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694443988; x=1695048788; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=phlNJeAF6TJ1zKEO5NBVhLitKcC6CFjiN7gRSHXNG3s=;
        b=eyQo3qYI4Fx2lI5Z3ru7OGGGtYIhHtCslB1xd5Z23gAYDpzu8ql1T1iXZkRLU6LVbs
         j/Ns50zMljr+PZQ4ecrXZbHtwY/AdEXEKITCxQaJsz8k3ejGNF6lWJVNE9gzeR8DPbNt
         AwYycgiLhc/3WgxhAHN4jRzi1kt9AhPgGNL7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694443988; x=1695048788;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phlNJeAF6TJ1zKEO5NBVhLitKcC6CFjiN7gRSHXNG3s=;
        b=jbx8UOqaQWg2Ccz5PydlYM+WIRUu0ZCZ+5K5P6jHVUAw3vAqkUJHPmE+BVgqjGQEf6
         jfmUVS1H0cfyFRscIPMhlTdzY7DeeVWUS4qdbhjSY/+PABEEaJH4n5HSw/nOhE+Yut6U
         OTQ1+WEx2sefd8o2X8BtrPoJy6gvEm/XegW8zbG1fOIiv5IBJdmRqsjBX/8EsZW8ohZw
         M6WSsN1UoUXwh8sesmQvueQ7jcZImzrQV+lilBfuNYFY0zIZhJQkj0Tb+5LQ0fOyFlDe
         Uk9PcS4wWdlPxighmOiDAD59trcOY/KBqMpj2SMjLzCiMQ/BAfhmpApVhHqtE67bA7zt
         BMCQ==
X-Gm-Message-State: AOJu0YxziknqH7erscSWc6DCSePeiN3aAsX7oqv3LEWzKUuyBvo0VISp
	MdL3TTb1gUadTo9x5ZYyXpr98R2AZ4NIDgOp5Zk=
X-Google-Smtp-Source: AGHT+IE2q/2LtMBr21WtauqtTmuUhodX+wNw4DfL2+s6gMQ79J9LWZolf8YlUFkNIBhBhCaeMVviCw==
X-Received: by 2002:a0d:fe43:0:b0:595:81b6:c055 with SMTP id o64-20020a0dfe43000000b0059581b6c055mr9494189ywf.49.1694443988696;
        Mon, 11 Sep 2023 07:53:08 -0700 (PDT)
Received: from nitro.local ([209.226.106.110])
        by smtp.gmail.com with ESMTPSA id w20-20020a81a214000000b00583d44b4b30sm1972128ywg.99.2023.09.11.07.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 07:53:08 -0700 (PDT)
Date: Mon, 11 Sep 2023 10:52:59 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: keys@linux.kernel.org
Subject: Re: uwu@icenowy.me
Message-ID: <20230911-ricotta-lunchtime-9a5a69@meerkat>
References: <20230911031920.351630-1-uwu@icenowy.me>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230911031920.351630-1-uwu@icenowy.me>

On Mon, Sep 11, 2023 at 11:19:20AM +0800, Icenowy Zheng wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Added to keyring.

-K
